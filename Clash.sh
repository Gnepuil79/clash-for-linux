#!/bin/bash
#Description:     The test script
#QQ：             2041598918
#Author:          mengyuanxi
#email：          2041598918@qq.com 
#FileName:        Clash.sh
#Date:            2023-11-06
#=======================================================
read -p "请输入（start|stop|restart）: " now

if [[ $now == 'start' ]]; then
   /usr/local/clash-for-linux-master/start.sh
   source /etc/profile.d/clash.sh 
elif [[ $now == 'stop' ]]; then
    /usr/local/clash-for-linux-master/shutdown.sh
elif [[ $now == 'restart' ]]; then
    /usr/local/clash-for-linux-master/restart.sh
    source /etc/profile.d/clash.sh
else
    echo "请输入正确的操作（start|stop|restart）！"
fi

