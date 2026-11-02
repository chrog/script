#!/bin/bash

export BORG_REPO="/media/nas_share/borg_repo/"
export BORG_PASSPHRASE="12345678"

sudo apt install borgbackup -y

borg init --encryption=repokey

borg key export $BORG_REPO borg_repo_key.key
borg key export --paper $BORG_REPO borg_repo_key.txt
borg key export --qr-html $BORG_REPO borg_repo_key.html 