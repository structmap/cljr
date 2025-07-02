#!/bin/bash -e
export PATH=$PATH:~/.dotnet/tools
#dotnet restore
#cljr -P

if [ ! -f /etc/hosts ]
then
echo '127.0.0.1 localhost' > /etc/hosts
fi

cljr $@
