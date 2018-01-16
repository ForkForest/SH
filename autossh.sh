#!/bin/sh
wget -c -O /tmp/autossh-1.4e.tgz http://www.nxybsdt.tk:8080/soft/autossh-1.4e.tgz
cd /tmp/
tar -xvf autossh-1.4e.tgz
cd autossh-1.4e
./configure
make
make install
