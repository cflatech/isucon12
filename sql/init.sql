DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
UPDATE id_generator SET id=2678400000 WHERE stub='a';
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;
TRUNCATE TABLE report_billing;

-- DROP TABLE IF EXISTS `visit_history_summary`;
-- CREATE TABLE `visit_history_summary` (
--   `player_id` varchar(255) NOT NULL,
--   `tenant_id` bigint unsigned NOT NULL,
--   `competition_id` varchar(255) NOT NULL,
--   `created_at` bigint NOT NULL,
--   `updated_at` bigint NOT NULL
-- ) ;

-- INSERT INTO `visit_history_summary`
-- SELECT player_id, tenant_id, competition_id, MIN(created_at), 1 as updated_at FROM visit_history GROUP BY player_id, tenant_id, competition_id;
-- ALTER TABLE visit_history RENAME TO visit_history_old;
-- ALTER TABLE visit_history_summary RENAME TO visit_history;
-- ALTER TABLE visit_history ADD INDEX com_ten_idx(competition_id, tenant_id);
