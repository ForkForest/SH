#!/bin/sh
wget -c -O /tmp/autossh-1.4e.tgz --no-check-certificate "https://raw.githubusercontent.com/sunlewuyou/SH/master/autossh-1.4e.tgz"
tar -xvf autossh-1.4e.tgz
cd autossh-1.4e
./configure
make
make install
