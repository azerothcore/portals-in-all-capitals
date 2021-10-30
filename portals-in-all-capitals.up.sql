-- !!! NOTE: set these before running the queries in order to avoid conflicts !!!
SET @GO_TEMPLATE = 500000; -- 8 slots
SET @GO_SPAWN = 2000000; -- 24 slots (3 x 8)

DELETE FROM `gameobject_template` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GO_TEMPLATE + 0, 22, 4396, 'Portal to Stormwind', '', '', '', 1, 17334, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 1, 22, 4393, 'Portal to Darnassus', '', '', '', 1, 17608, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 2, 22, 6955, 'Portal to Exodar', '', '', '', 1, 32268, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 3, 22, 4394, 'Portal to Ironforge', '', '', '', 1, 17607, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 4, 22, 4395, 'Portal to Orgrimmar', '', '', '', 1, 17609, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 5, 22, 6956, 'Portal to Silvermoon', '', '', '', 1, 32270, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 6, 22, 4397, 'Portal to Thunder Bluff', '', '', '', 1, 17610, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(@GO_TEMPLATE + 7, 22, 4398, 'Portal to Undercity', '', '', '', 1, 17611, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

DELETE FROM `gameobject_template_locale` WHERE `entry` BETWEEN @GO_TEMPLATE + 0 AND @GO_TEMPLATE + 7;

INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`)
SELECT @GO_TEMPLATE + 0, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176296  #Portal to Stormwind
UNION
SELECT @GO_TEMPLATE + 1, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176498  #Portal to Darnassus
UNION
SELECT @GO_TEMPLATE + 2, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 182351  #Portal to Exodar
UNION
SELECT @GO_TEMPLATE + 3, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176497  #Portal to Ironforge
UNION
SELECT @GO_TEMPLATE + 4, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176499  #Portal to Orgrimmar
UNION
SELECT @GO_TEMPLATE + 5, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 182352  #Portal to Silvermoon
UNION
SELECT @GO_TEMPLATE + 6, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176500  #Portal to Thunder Bluff
UNION
SELECT @GO_TEMPLATE + 7, L.locale, L.name, '', 0
FROM gameobject_template AS T
INNER JOIN gameobject_template_locale AS L
ON T.entry = L.entry
WHERE T.entry = 176501; #Portal to Undercity

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
-- Alliance
(@GO_TEMPLATE + 0, 1732, 0, 0, 0),
(@GO_TEMPLATE + 1, 1732, 0, 0, 0),
(@GO_TEMPLATE + 2, 1732, 0, 0, 0),
(@GO_TEMPLATE + 3, 1732, 0, 0, 0),
-- Horde
(@GO_TEMPLATE + 4, 1735, 0, 0, 0),
(@GO_TEMPLATE + 5, 1735, 0, 0, 0),
(@GO_TEMPLATE + 6, 1735, 0, 0, 0),
(@GO_TEMPLATE + 7, 1735, 0, 0, 0);

DELETE FROM `gameobject` WHERE `guid` IN (
    @GO_SPAWN + 00,
    @GO_SPAWN + 01,
    @GO_SPAWN + 02,
    @GO_SPAWN + 03,
    @GO_SPAWN + 04,
    @GO_SPAWN + 05,
    @GO_SPAWN + 06,
    @GO_SPAWN + 07,
    @GO_SPAWN + 08,
    @GO_SPAWN + 09,
    @GO_SPAWN + 10,
    @GO_SPAWN + 11,
    @GO_SPAWN + 12,
    @GO_SPAWN + 13,
    @GO_SPAWN + 14,
    @GO_SPAWN + 15,
    @GO_SPAWN + 16,
    @GO_SPAWN + 17,
    @GO_SPAWN + 18,
    @GO_SPAWN + 19,
    @GO_SPAWN + 20,
    @GO_SPAWN + 21,
    @GO_SPAWN + 22,
    @GO_SPAWN + 23
);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`)
VALUES
(@GO_SPAWN + 00, 500002, 0, 0, 0, 1, 1, -4605.71, -918.564, 501.07, 3.05297, -0, -0, -0.999018, -0.0442966, 300, 0, 1, '', 0),
(@GO_SPAWN + 01, 500001, 0, 0, 0, 1, 1, -4610.43, -931.21, 501.068, 1.7335, -0, -0, -0.76223, -0.647307, 300, 0, 1, '', 0),
(@GO_SPAWN + 02, 500000, 0, 0, 0, 1, 1, -4603.77, -925.467, 501.071, 2.7663, -0, -0, -0.982446, -0.186547, 300, 0, 1, '', 0),
(@GO_SPAWN + 03, 500003, 530, 0, 0, 1, 1, -4044.65, -11577.1, -138.484, 1.0649, -0, -0, -0.507644, -0.861567, 300, 0, 1, '', 0),
(@GO_SPAWN + 04, 500001, 530, 0, 0, 1, 1, -4038.96, -11580.8, -138.431, 1.63038, -0, -0, -0.727858, -0.685728, 300, 0, 1, '', 0),
(@GO_SPAWN + 05, 500000, 530, 0, 0, 1, 1, -4047.49, -11569.3, -138.49, 6.10779, -0, -0, -0.0875875, 0.996157, 300, 0, 1, '', 0),
(@GO_SPAWN + 06, 500003, 1, 0, 0, 1, 1, 9651.76, 2506.87, 1331.56, 1.18996, -0, -0, -0.560493, -0.828159, 300, 0, 1, '', 0),
(@GO_SPAWN + 07, 500002, 1, 0, 0, 1, 1, 9656.46, 2506.88, 1331.59, 2.06333, -0, -0, -0.858154, -0.513392, 300, 0, 1, '', 0),
(@GO_SPAWN + 08, 500000, 1, 0, 0, 1, 1, 9646.91, 2512.91, 1331.51, 0.135276, -0, -0, -0.0675867, -0.997713, 300, 0, 1, '', 0),
(@GO_SPAWN + 09, 500003, 0, 0, 0, 1, 1, -8983.95, 856.786, 29.6206, 3.72043, -0, -0, -0.958409, 0.285397, 300, 0, 1, '', 0),
(@GO_SPAWN + 10, 500002, 0, 0, 0, 1, 1, -8983.28, 852.043, 29.6206, 2.97923, -0, -0, -0.996707, -0.0810928, 300, 0, 1, '', 0),
(@GO_SPAWN + 11, 500001, 0, 0, 0, 1, 1, -8994.92, 846.253, 29.6206, 1.30609, -0, -0, -0.607609, -0.794236, 300, 0, 1, '', 0),
(@GO_SPAWN + 12, 500006, 0, 0, 0, 1, 1, 1773.91, 70.543, -46.3191, 4.90662, -0, -0, -0.635213, 0.772337, 300, 0, 1, '', 0),
(@GO_SPAWN + 13, 500005, 0, 0, 0, 1, 1, 1768.73, 69.0272, -46.3206, 5.49978, -0, -0, -0.38176, 0.924261, 300, 0, 1, '', 0),
(@GO_SPAWN + 14, 500004, 0, 0, 0, 1, 1, 1763.72, 62.1829, -46.3206, 6.13989, -0, -0, -0.0715876, 0.997434, 300, 0, 1, '', 0),
(@GO_SPAWN + 15, 500007, 1, 0, 0, 1, 1, -952.192, 286.824, 109.839, 4.14406, -0, -0, -0.876991, 0.480507, 300, 0, 1, '', 0),
(@GO_SPAWN + 16, 500005, 1, 0, 0, 1, 1, -961.802, 293.637, 109.735, 4.40952, -0, -0, -0.805686, 0.592344, 300, 0, 1, '', 0),
(@GO_SPAWN + 17, 500004, 1, 0, 0, 1, 1, -972.592, 296.286, 109.817, 4.72368, -0, -0, -0.703102, 0.711089, 300, 0, 1, '', 0),
(@GO_SPAWN + 18, 500007, 530, 0, 0, 1, 1, 9987.34, -7113.53, 47.7055, 0.79852, -0, -0, -0.388737, -0.921349, 300, 0, 1, '', 0),
(@GO_SPAWN + 19, 500006, 530, 0, 0, 1, 1, 9995.38, -7092.29, 47.7055, 5.05381, -0, -0, -0.576705, 0.816953, 300, 0, 1, '', 0),
(@GO_SPAWN + 20, 500004, 530, 0, 0, 1, 1, 9989.99, -7093.12, 47.7055, 5.19517, -0, -0, -0.517567, 0.855642, 300, 0, 1, '', 0),
(@GO_SPAWN + 21, 500007, 1, 0, 0, 1, 1, 1468.88, -4214.92, 58.9939, 4.66052, -0, -0, -0.725205, 0.688534, 300, 0, 1, '', 0),
(@GO_SPAWN + 22, 500006, 1, 0, 0, 1, 1, 1464.81, -4215.45, 58.9939, 5.36738, -0, -0, -0.442067, 0.896982, 300, 0, 1, '', 0),
(@GO_SPAWN + 23, 500005, 1, 0, 0, 1, 1, 1462.06, -4218.48, 58.9939, 5.74045, -0, -0, -0.268048, 0.963406, 300, 0, 1, '', 0);
