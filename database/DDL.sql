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



