for db in $(ls *.db)
do
    sqlite3 $db < index.sql
    echo $db;
done