#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/oofreego/besttrace/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(113.59.224.1 101.95.120.109 14.215.116.1 61.49.137.5 112.65.35.62 27.40.0.30 218.205.152.14 183.192.160.3 221.183.63.121 202.112.14.151)
ip_addr=(北京电信 上海电信 广州电信 北京联通 上海联通 广州联通 北京移动 上海移动 广州移动 成都教育网)
# ip_len=${#ip_list[@]}

for i in {0..9}
do
	echo ${ip_addr[$i]}
	./besttrace -q1 -g cn ${ip_list[$i]}
	next
done
