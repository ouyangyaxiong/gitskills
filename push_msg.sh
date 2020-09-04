#!/bin/bash
#第一个参数推送密钥
SERVERCHAN_KEY=$1
BARK_KEY=$2
MSG=$3
if [ -z "${MSG}" ];then
    MSG=default
fi
RANDOM_NUM=$RANDOM
echo $RANDOM_NUM
curl http://sc.ftqq.com/$SERVERCHAN_KEY.send?text=restart-ibm-cloud-$MSG-$RANDOM_NUM
curl http://api.day.app/$BARK_KEY/restart-ibm-cloud-$MSG
exit 0
