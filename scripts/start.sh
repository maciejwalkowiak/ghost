#!/bin/bash
chown -R ubuntu:ubuntu /opt/node_home
su - ubuntu -c "export NODE_ENV=production"
su - ubuntu -c "pm2 start /opt/node_home/index.js --name=ghost"
