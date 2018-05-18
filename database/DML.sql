INSERT INTO faction (name) VALUES ('Rebel');
INSERT INTO faction (name) VALUES ('Imperial');
INSERT INTO faction (name) VALUES ('Scum');

INSERT INTO ship (name) VALUES ('T-65 X-Wing'), ('Y-Wing'), ('A-Wing'), ('TIE Fighter'), ('TIE Advanced');

INSERT INTO pilot (name) VALUES ('Rookie Pilot');
INSERT INTO pilot (name) VALUES ('Academy Pilot');
INSERT INTO pilot (name) VALUES ('Luke Skywalker');
INSERT INTO pilot (name) VALUES ('Darth Vader');
INSERT INTO pilot (name) VALUES ('Gold Squadron Pilot');

INSERT INTO faction_ship_pilot (faction_id, ship_id, pilot_id, pilot_skill)
SELECT f.faction_id, s.ship_id, p.pilot_id, 4 pilot_skill 
FROM faction f 
LEFT JOIN ship s ON 1 = 1
LEFT JOIN pilot p ON 1 = 1
WHERE f.[name] = 'Rebel' AND s.[name] = 'Y-Wing' AND p.[name] = 'Gold Squadron Pilot'
UNION ALL
SELECT f.faction_id, s.ship_id, p.pilot_id, 7 pilot_skill 
FROM faction f 
LEFT JOIN ship s ON 1 = 1
LEFT JOIN pilot p ON 1 = 1
WHERE f.[name] = 'Rebel' AND s.[name] = 'T-65 X-Wing' AND p.[name] = 'Luke Skywalker'
UNION ALL
SELECT f.faction_id, s.ship_id, p.pilot_id, 9 pilot_skill 
FROM faction f 
LEFT JOIN ship s ON 1 = 1
LEFT JOIN pilot p ON 1 = 1
WHERE f.[name] = 'Imperial' AND s.[name] = 'TIE Advanced' AND p.[name] = 'Darth Vader';
