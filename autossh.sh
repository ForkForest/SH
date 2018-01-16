#!/bin/sh
wget -c -O /tmp/autossh-1.4e.tgz -N --no-check-certificate "https://raw.githubusercontent.com/sunlewuyou/SH/master/autossh-1.4e.tgz"
cd /tmp/
tar -xvf autossh-1.4e.tgz
cd autossh-1.4e
./configure
make
make install
