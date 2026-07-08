# borg
Scripts for backing up Ubuntu Linux 26.04 LTS.

- Mount SMB-Share on boot:

        nano /home/user/.smbcredentials
        chmod 600 /home/user/.smbcredentials
        sudo nano /etc/fstab
        mkdir /home/user/shares
        mkdir /home/user/shares/backup/borg_repo
        reboot
        
Create Repository:

`borg init -e repokey /home/user/shares/backup/borg_repo`

`borg key export /home/user/shares/backup/borg_repo`

List Backups:

`borg list /home/user/shares/backup/borg_repo`

Initial Backup:

`borg create -v --stats -C lz4 /home/user/shares/backup/borg_repo::backup_$(date +%Y%m%d) /home/user`

Delete Backup:

`borg delete /home/user/shares/backup/borg_repo backup_20200101`
