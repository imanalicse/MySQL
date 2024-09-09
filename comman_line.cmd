database upload via cmd:

mysql -u root -p database_name < C:\Users\user\Downloads\database_file.sql
mysql -h localhost -u root database_name < C:\Users\user\Downloads\database_file.sql

mysql -u root -p --port 3307 database_name < C:\Users\user\Downloads\database_name.sql

mysqldump -u root -p database_name > C:\Users\user\Downloads\database_name.sql