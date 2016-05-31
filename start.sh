#!/bin/sh

/usr/bin/transmission-daemon 

touch /var/log/messages
tailf /var/log/messages
