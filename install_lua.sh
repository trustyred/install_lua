#!/bin/bash


mkdir -p ~/lua
cd ~/lua
wget -R -0 http://www.lua.org/ftp/lua-5.3.1.tar.gz
echo "Now is exract"
tar zxf lua-5.3.1.tar.gz
if [ $? != 0 ];then
    echo "exract succeed\n"
fi
cd lua-5.3.1

make linux > /dev/null 2>&1
if [ $? != 0 ];then
    echo "Now is install lib"
    sudo apt-get install libreadline6 libreadline6-dev
    make linux > /dev/null 2>&1
fi
if [ $? != 0 ];then
    echo "lua install succeed\n"
fi

sudo ln -s ~/lua/lua-5.3.1/src/lua /usr/bin/lua
if [ $? != 0 ];then
    echo "ln succed\n"
fi
