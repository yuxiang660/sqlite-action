#!/bin/sh -l

apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:longsleep/golang-backports && apt install -y golang-go && apt install -y redis-server && apt-get install -y sqlite3

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
