#!/usr/bin/env bash

set -x

./prepare_fs && \
# echo 123 > /mnt/test_img/test && \
head -c $[ 11 * 1024 + 256 * 1024 ] /dev/zero > /mnt/test_img/test
./ccp /mnt/test_img/test /mnt/test_img/test2
