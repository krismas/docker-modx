#!/bin/sh
#
# Get latest MODX Revolution
#
wget -q http://modx.com/download/latest -O /home/latest.zip
unzip /home/latest.zip -x "*/./" -d /home > /dev/null 2>&1
rm /home/latest.zip
MODX=`ls /home | grep -v latest.zip`
mv /home/$MODX /home/modx
chown -R nobody.nobody /home/modx
