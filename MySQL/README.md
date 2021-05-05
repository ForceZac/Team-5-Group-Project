

Working database command:

sysbench oltp_read_write prepare --table-size=2000000 --db-driver=mysql --mysql-db=test --mysql-host=127.0.0.1 --mysql-user=admin --mysql-port=3306 --mysql-password=password
