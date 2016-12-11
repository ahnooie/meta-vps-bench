#!/bin/bash

# install mariadb, sysbench
export DEBIAN_FRONTEND=noninteractive
debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password password test'
debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password_again password test'

apt-get update
apt-get -y upgrade
apt-get -y install mariadb-server
apt-get -y install sysbench

sysbench --test=fileio --file-total-size=6G prepare

mysql -uroot --password=test -e "create database test"
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test prepare

