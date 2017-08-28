#!/bin/bash

docker save -o nodejs.tar nodejs
gzip -c nodejs.tar > nodejs.tar.gz
rm nodejs.tar
scp nodejs.tar.gz asus:~/
ssh asus "docker load -i ~/nodejs.tar.gz"
rm nodejs.tar.gz

