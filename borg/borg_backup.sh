#!/bin/bash
export BORG_PASSPHRASE="user"
borg create -v --stats -C lz4 /home/user/shares/backup/borg_repo::backup_$(date +%Y%m%d) /home/user
