#!/usr/bin/env bash

set -x

./prepare_fs
head -c $[ 12 * 1024 + 256 * 1024 + 2 * 256 * 1024 ] /dev/zero > /mnt/test_img/test
./ccp /mnt/test_img/test /mnt/test_img/test2

size1=$((12 * 1024 + 256 * 1024 + 256 * 1024)) // 256 * 1024 blocks freed

truncate /mnt/test_img/test2 -s $size1