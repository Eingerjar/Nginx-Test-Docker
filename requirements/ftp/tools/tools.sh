#!/bin/bash
touch /var/log/vsftpd.log && chmod 640 /var/log/vsftpd.log && chown root:adm /var/log/vsftpd.log
mkdir -p /var/run/vsftpd/empty
chown -R $FTP_USER /home/$FTP_USER
exec vsftpd