# borg

Scripts for backing up home directory in Ubuntu Linux 26.04 LTS.

# install

        sudo apt install borgbackup

# config

- Mount SMB-Share on boot:

        id # check uid/guid
        nano /home/user/.smbcredentials # Create credentials
        chmod 600 /home/user/.smbcredentials
        sudo nano /etc/fstab
        mkdir /home/user/shares
        mkdir /home/user/shares/backup/borg_repo
        chmod 700 /home/user/shares
        chmod 700 /home/user/shares/backup
        reboot
        
- Create repository and export key:

        borg init -e repokey /home/user/shares/backup/borg_repo
        borg key export /home/user/shares/backup/borg_repo

- List backups:

        borg list /home/user/shares/backup/borg_repo

- Initial backup:

        borg create -C lz4 /home/user/shares/backup/borg_repo::backup_20200101 /home/user

- Delete backup:

        borg delete /home/user/shares/backup/borg_repo backup_20200101

# links

- https://www.borgbackup.org/
- https://borgbackup.readthedocs.io/
