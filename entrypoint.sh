#!/bin/bash

service nginx start
service mysql start
service redis-server start

/usr/sbin/sshd -D