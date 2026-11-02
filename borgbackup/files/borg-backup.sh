#!/bin/bash
export BORG_REPO="/media/nas_share/borg_repo/"
export BORG_PASSPHRASE="12345678"
borg create -v --stats --progress --exclude-caches --compression auto,lz4 ::backup_$(date +%Y%m%d) ~/ --exclude ~/Nextcloud
