CREATE INDEX player_score_index
ON player_score (player_id, competition_id, score, row_num);

CREATE INDEX competition_index
ON competition (id, title);