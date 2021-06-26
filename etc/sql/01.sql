CREATE DATABASE IF NOT EXISTS `<your-db-name>` CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci;
GRANT ALL ON `<your-db-name>`.* TO 'mysql-username'@'%';
FLUSH PRIVILEGES;