### This sql script is auto run when mariadb container start and $DATA_PATH_HOST/mariadb not exists.
###
### if your $DATA_PATH_HOST/mariadb is exists and you do not want to delete it, you can run by manual execution:
###
###     docker-compose exec mariadb bash
###     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
###

CREATE DATABASE IF NOT EXISTS `bugspring` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `bugspring`.* TO 'bugspring'@'%' IDENTIFIED BY 'secret' ;

FLUSH PRIVILEGES ;
