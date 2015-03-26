#!/bin/bash
# To create a user folder in /Volumes/ and mount //<NETWORKSHARE>/Users/<LOGNAMEFOLDER>
# mount MAC based shares require type afp, option AUTH, and FQDN

mount_point_base="/Volumes/${LOGNAME}"
mount_point_one="${mount_point_base}"
mount_point_two="${mount_point_base}_two"

share_point_one_root="//uifs1/Users/"
share_point_two_root="uimacmini.ui.local1/"

auth=";AUTH=Client%20KRB%20v2@"

if [[ ! -d ${mount_point_one} ]]; then
    mkdir ${mount_point_one}
fi

/sbin/mount -t smbfs ${share_point_one_root}${LOGNAME} ${mount_point_one}


if [[ ! -d ${mount_point_two} ]]; then
    mkdir ${mount_point_two}
fi

/sbin/mount -t afp "afp://${auth}${share_point_two_root}${LOGNAME}" ${mount_point_two}
