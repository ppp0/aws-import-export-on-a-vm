#!/usr/bin/env bash


# Delete everything on drive, create one big partition from first to last possible sector

drive=/dev/sdb
sgdisk -o ${drive}
S=$(sgdisk -F ${drive}) #2048
E=$(sgdisk -E ${drive}) #7814037133
sgdisk -n 1:${S}:${E} ${drive}

# format with ext4, no superuser quota

mkfs -t ext4 -m 0 ${drive}1


