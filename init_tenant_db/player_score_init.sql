CREATE TABLE player_score_2 (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  tenant_id BIGINT NOT NULL,
  player_id VARCHAR(255) NOT NULL,
  competition_id VARCHAR(255) NOT NULL,
  score BIGINT NOT NULL,
  row_num BIGINT NOT NULL,
  created_at BIGINT NOT NULL,
  updated_at BIGINT NOT NULL
);

INSERT INTO player_score_2
SELECT id, tenant_id, player_id, competition_id, score, MIN(row_num), created_at, updated_at
FROM player_score
GROUP BY id, tenant_id, player_id, competition_id, score, created_at, updated_at;

DROP TABLE player_score;

ALTER TABLE player_score_2 RENAME TO player_score;