#!/bin/bash

service nginx start
service mysql start
service redis-server start
service cron start

/usr/sbin/sshd -D