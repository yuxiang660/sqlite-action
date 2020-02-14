#!/bin/sh -l

apt-get update && apt-get install -y sqlite3
sqlite3 --version

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
