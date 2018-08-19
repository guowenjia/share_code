#! /bin/bash
LOG_DIR=/home/guoshare/
ROOT_UID=0
if [ "$UID" -ne $ROOT_UID ]
then
    echo 'must be root to run this script'
    exit 1
fi

cd $LOG_DIR || {
    echo 'Cannot change to necessary directory.'>&2 // 重定向到错误输出
    exit 1
}

cat /dev/null > helloworld.txt && echo "Logs cleaned up"
exit 0
