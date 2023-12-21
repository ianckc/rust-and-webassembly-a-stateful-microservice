#!/bin/sh
mysql -uroot -p${whalehello} -e "CREATE DATABASE orders;"
mysql -uroot -p${whalehello} -e "CREATE USER 'order_manager'@'localhost' IDENTIFIED BY 'b8B32px0kZg';"
mysql -uroot -p${whalehello} -e "GRANT INSERT, UPDATE, DELETE, SELECT ON orders.* TO 'order_manager'@'localhost';"
mysql -uroot -p${whalehello} -e "FLUSH PRIVILEGES;"
    