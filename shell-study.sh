#!/bin/bash
# Program:
#	Use for shell study.
# History:
# 2016/05/08 wei First release

# 设置环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:usr/local/sbin:~/bin
export PATH

set -x

echo -e "start shell-study.sh..."

# type cmd
type cc

# which cmd
which gcc


#start 环境变量专题
echo -e "\n环境变量专题:\n"

# env cmd
my_var="this is my var."
# 显示HOME环境变量
env | grep HOME
# env无法找到自定义变量
env | grep my_var

# set 能找到环境变量和自定义变量
set | grep PWD
set | grep my_var

# export 自定义变量变成环境变量
export my_var
env | grep my_var
set | grep my_var

# declare cmd
# declare +x 可以删除环境变量
declare +x my_var
env | grep my_var
set | grep my_var
# declare -x 可以添加环境变量, 和export的功能一样
declare -x my_var
env | grep my_var
set | grep my_var
# unset 删除变量
unset my_var
set | grep my_var=
#end 环境变量专题


# read cmd
read -p "please input your name:" -t 5 your_name
echo $your_name

