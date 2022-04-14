#!/bin/bash

service nginx start
service mysql start
service redis-server start

/etc/init.d/supervisor start
/usr/sbin/sshd -D