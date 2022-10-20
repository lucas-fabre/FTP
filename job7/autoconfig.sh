#!/bin/bash

sudo apt-get update

sudo apt-get install proftpd-*

cp /etc/shells /etc/shells.old
echo "/bin/false" >> /etc/shells

cat /etc/passwd | cut -d: -f1 > /etc/ftpusers

sudo useradd --badnames -p kalimac Merry -s /bin/false
sudo useradd --badnames -p secondbreakfast Pippin -s /bin/false

echo "UseFtpUsers on" >> /etc/proftpd/proftpd.conf

sudo service proftpd restart
