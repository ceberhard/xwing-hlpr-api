INSERT INTO faction (name) VALUES 
('Rebel'),
('Imperial'),
('Scum');

INSERT INTO ship (name) VALUES
('T-65 X-Wing'),
('Y-Wing'),
('A-Wing'),
('TIE Fighter'),
('TIE Advanced');

INSERT INTO pilot (name) VALUES 
('Rookie Pilot'),
('Academy Pilot'),
('Luke Skywalker'),
('Darth Vader'),
('Gold Squadron Pilot');

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

INSERT INTO game_event (name, game_order) VALUES
('before_planning_phase', 1),
('during_planning_phase', 2),
('after_planning_phase', 3),
('before_activation_phase', 4),
('ship_reveal_dial', 5),
('ship_execute_maneuver', 6),
('pilot_check_stress', 7),
('ship_perform_action', 8),
('after_activation_phase', 9),
('before_combat_phase', 10),
('ship_declare_target', 11),
('ship_roll_attack_dice', 12),
('ship_modify_attack_dice', 13),
('ship_roll_defense_dice', 14),
('ship_modify_defense_dice', 15),
('ship_deal_damage', 16),
('before_end_phase', 17),
('during_end_phase', 18),
('after_end_phase', 19);


