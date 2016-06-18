#!/usr/bin/env bash

set -x

./prepare_fs
# head -c $[ 12 * 1024 + 256 * 1024 + 256 * 1024 + 10 ] /dev/zero > /mnt/test_img/test
echo 111 > /mnt/test_img/test
./ccp /mnt/test_img/test /mnt/test_img/test2
echo "" > /dev/kmsg
echo "" > /dev/kmsg
echo "" > /dev/kmsg
echo 444 >> /mnt/test_img/test2
