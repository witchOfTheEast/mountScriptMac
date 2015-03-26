#!/bin/bash
<<<<<<< HEAD
# To create a user folder in /Volumes/ and mount //<NETWORKSHARE>/Users/<LOGNAMEFOLDER>

mount_point_base="/Volumes/${LOGNAME}"
share_point_root="//uifs1/Users/"

if [[ ! -d ${mount_point_base} ]]; then
    mkdir ${mount_point_base}
fi

/sbin/mount_smbfs ${share_point_root}${LOGNAME} ${mount_point_base}
