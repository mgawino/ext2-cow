#!/bin/sh

ddzero="dd status=none if=/dev/zero"

export LC_ALL=C

fail() {
    echo "FAIL: $1"
    exit 1
}

free_space() {
    sync
    df --output=avail $MOUNT_POINT | tail -1
}

no_blocks_allocated() {
    local before=$1
    local after=$2
    [ $after -eq $before ]
}

some_blocks_allocated() {
    local before=$1
    local after=$2
    [ $after -gt $[ $before - 16 ] ]
}

last_oops_before="$(dmesg|grep Oops|tail -1)"

check_for_oops() {
    local last_oops="$(dmesg|grep Oops|tail -1)"
    [ "$last_oops" = "$last_oops_before" ]
}
