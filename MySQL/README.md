
# Install MySQL and Sysbench using apt-get.

# Create the docker image and container

docker build -t "mysql-single" .

# Run a container with that image

docker run -d -p 3307:3306 mysql-single

## Access the image. Replace User: root, Password: supervisor, as needed.

mysql -uroot -psupervisor -h127.0.0.1 -P3306

# create data table within the instance

CREATE DATABASE test;

# Fill testing data table & run test

sysbench oltp_read_write prepare --table-size=2000000 --db-driver=mysql --mysql-db=test --mysql-host=arldcn24 --mysql-user=admin --mysql-port=3306 --mysql-password=supervisor --max-time=60 --oltp-read-only=on --max-requests=0 --num-threads=$numCli
