#!/usr/bin/env bash

set -x

./prepare_fs &&
echo 123 > /mnt/test_img/test &&
./ccp /mnt/test_img/test /mnt/test_img/test2 &&
echo "" > /dev/kmsg
echo "" > /dev/kmsg
echo "" > /dev/kmsg
echo 444 >> /mnt/test_img/test2