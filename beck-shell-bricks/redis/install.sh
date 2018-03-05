#!/bin/sh
wget http://download.redis.io/releases/redis-3.0.5.tar.gz

cp redis-3.0.5.tar.gz /usr/local/
cd  /usr/local/
tar -zxvf redis-3.0.5.tar.gz
make
make install

cp redis.conf /etc/

cd /usr/local/bin
./redis-server /etc/redis.conf
