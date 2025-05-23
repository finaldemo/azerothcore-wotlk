-- DB update 2025_04_01_04 -> 2025_04_01_05

-- Edit max range from 4 to 1
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 25744;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 25744) AND (`source_type` = 0) AND (`id` IN (5));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25744, 0, 5, 6, 9, 0, 100, 1, 0, 0, 0, 0, 0, 1, 11, 45944, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Fiend - Within 0-1 Range - Cast \'Dark Fiend\' (No Repeat)');
