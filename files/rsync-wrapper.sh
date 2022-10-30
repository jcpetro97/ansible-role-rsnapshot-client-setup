#!/bin/bash
date >> /home/rsnapshot/backuplog
echo $@ >> /home/rsnapshot/backuplog
/usr/bin/sudo /usr/bin/rsync "$@";