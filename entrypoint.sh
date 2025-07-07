#!/bin/bash -e

#dotnet restore
#cljr -P

if [ ! -f /etc/hosts ]
then
echo '127.0.0.1 localhost' > /etc/hosts
fi

cljr $@
