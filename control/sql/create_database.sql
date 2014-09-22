CREATE DATABASE ${customer} CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON ${customer}.* TO 'customer_creator'@'localhost';
CREATE USER '${customer}'@'localhost'
IDENTIFIED BY '${customer}'; 
GRANT ALL PRIVILEGES ON ${customer}.* TO '${customer}'@'localhost';
