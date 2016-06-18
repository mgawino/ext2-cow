#!/usr/bin/env bash

set -x

./prepare_fs
head -c $[ 12 * 1024 + 256 * 1024 + 3 * 256 * 1024 ] /dev/zero > /mnt/test_img/test
./ccp /mnt/test_img/test /mnt/test_img/test2
export size=`echo "12 * 1024 + 256 * 1024 + 1 * 256 * 1024 + 3 * 1024" | bc`
truncate /mnt/test_img/test2 -s $size1
