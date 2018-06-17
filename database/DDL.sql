CREATE TABLE faction
    (faction_id integer primary key,
    [name] nvarchar(50) not null,
    CONSTRAINT faction_c1 UNIQUE([name]));

CREATE TABLE ship
    (ship_id integer primary key,
    [name] nvarchar(100) not null,
    CONSTRAINT ship_c1 UNIQUE([name]));

CREATE TABLE pilot
    (pilot_id integer primary key,
    [name] nvarchar(100) not null,
    CONSTRAINT pilot_c1 UNIQUE([name]));

CREATE TABLE faction_ship_pilot
    (faction_ship_pilot_id integer primary key,
    faction_id integer not null,
    ship_id integer not null,
    pilot_id integer not null,
    pilot_skill integer not null,
    FOREIGN KEY (ship_id) REFERENCES ship(ship_id),
    FOREIGN KEY (faction_id) REFERENCES faction(faction_id),
    FOREIGN KEY (pilot_id) REFERENCES pilot(pilot_id),
    CONSTRAINT faction_ship_pilot_c1 UNIQUE(faction_id, ship_id, pilot_id),
    CONSTRAINT faction_ship_pilot_c2 CHECK(pilot_skill >= 0));

CREATE TABLE game_event
    (game_event_id integer primary key,
    [name] nvarchar(100) not null,
    game_order integer not null,
    CONSTRAINT game_event_c1 UNIQUE([name]),
    CONSTRAINT game_event_c2 UNIQUE(game_order),
    CONSTRAINT game_event_c3 CHECK(game_order > 0));

CREATE TABLE upgrade_type
    (upgrade_type_id integer primary key,
    [name] nvarchar(100) not null,
    CONSTRAINT upgrade_type_c1 UNIQUE([name]));

CREATE TABLE upgrade
    (upgrade_id integer primary key,
    upgrade_type_id integer not null,
    [name] nvarchar(100) not null,
    [description] nvarchar(1000) not null,
    FOREIGN KEY (upgrade_type_id) REFERENCES upgrade_type(upgrade_type_id),
    CONSTRAINT upgrade_c1 UNIQUE([name]));

CREATE TABLE upgrade_game_event
    (upgrade_game_event_id integer primary key,
    upgrade_id integer not null,
    game_event_id integer not null,
    FOREIGN KEY (upgrade_id) REFERENCES upgrade(upgrade_id),
    FOREIGN KEY (game_event_id) REFERENCES game_event(game_event_id),
    CONSTRAINT upgrade_game_event_c1 UNIQUE(upgrade_id, game_event_id));

CREATE TABLE ship_list
    (ship_list_id integer primary key,
    [name] nvarchar(200) not null,
    CONSTRAINT ship_list_c1 UNIQUE([name]));

CREATE TABLE ship_list_item
    (ship_list_item_id integer primary key,
    ship_list_id integer not null,
    faction_ship_pilot_id integer not null,
    upgrade_id integer not null,
    FOREIGN KEY (ship_list_id) REFERENCES ship_list(ship_list_id),
    FOREIGN KEY (faction_ship_pilot_id) REFERENCES faction_ship_pilot(faction_ship_pilot_id),
    FOREIGN KEY (upgrade_id) REFERENCES upgrade(upgrade_id),
    CONSTRAINT ship_list_item_c1 UNIQUE(ship_list_id, faction_ship_pilot_id, upgrade_id));
