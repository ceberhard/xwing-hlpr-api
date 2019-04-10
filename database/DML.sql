INSERT INTO faction (faction_id, name) VALUES 
(1, 'Rebel'),
(2, 'Imperial'),
(3, 'Scum'),
(4, 'Resistance'),
(5, 'First Order');

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

INSERT INTO faction_ship_pilot (faction_ship_pilot_id, faction_id, ship_id, pilot_id, pilot_skill)
SELECT 1 faction_ship_pilot_id, f.faction_id, s.ship_id, p.pilot_id, 4 pilot_skill 
FROM faction f 
LEFT JOIN ship s ON 1 = 1
LEFT JOIN pilot p ON 1 = 1
WHERE f.[name] = 'Rebel' AND s.[name] = 'Y-Wing' AND p.[name] = 'Gold Squadron Pilot'
UNION ALL
SELECT 2 faction_ship_pilot_id, f.faction_id, s.ship_id, p.pilot_id, 7 pilot_skill 
FROM faction f 
LEFT JOIN ship s ON 1 = 1
LEFT JOIN pilot p ON 1 = 1
WHERE f.[name] = 'Rebel' AND s.[name] = 'T-65 X-Wing' AND p.[name] = 'Luke Skywalker'
UNION ALL
SELECT 3 faction_ship_pilot_id, f.faction_id, s.ship_id, p.pilot_id, 9 pilot_skill 
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

INSERT INTO upgrade_type (upgrade_type_id, name) VALUES
(1, 'Pilot'),
(2, 'Astromech'),
(3, 'Bomb'),
(4, 'Cannon'),
(5, 'Cargo'),
(6, 'Crew'),
(7, 'Elite'),
(8, 'Hardpoint'),
(9, 'Illicit'),
(10, 'Missiles'),
(11, 'Modification'),
(12, 'Salvaged Astromech'),
(13, 'System'),
(14, 'Team'),
(15, 'Tech'),
(16, 'Title'),
(17, 'Torpedoes'),
(18, 'Turret');

INSERT INTO upgrade (upgrade_id, upgrade_type_id, name, description) VALUES
(1, 2, 'R2-D2', 'After executing a green maneuver, you may recover 1 shield (up to your shield value).'),
(2, 2, 'R5-P9', 'At the end of the Combat phase, you may spend 1 of your focus tokens to recover 1 shield (up to your shield value).'),
(3, 4, 'Tractor Beam', 'If this attack hits, the defender receives 1 tractor beam token. Then cancel all dice results.'),
(4, 9, 'Glitterstim', 'At the start of the Combat phase, you may discard this card and receive 1 stress token. If you do, until the end of the round, when attacking or defending, you may change all of your focus results to hit or evade results'),
(5, 17, 'Ion Torpedoes', 'If this attack hits, the defender and each ship at Range 1 of it receives 1 ion token.');
