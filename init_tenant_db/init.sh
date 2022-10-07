for db in $(ls *.db)
do
    sqlite3 $db < player_score_init.sql
    echo $db;
done