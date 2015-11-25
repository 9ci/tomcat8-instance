#!/bin/sh
set -x


./tomcat8-clean.sh tomcat8-1
./tomcat8-clean.sh tomcat8-2
./tomcat8-clean.sh tomcat8-3

rm -f tomcat8-instance-8.0.28-maedi.deb

dpkg -r tomcat8-instance-8.0.28-maedi
dpkg-deb --build tomcat8-instance-8.0.28-maedi
dpkg -i tomcat8-instance-8.0.28-maedi.deb

echo "CREATION DES INSTANCES"
systemctl stop tomcat8-1
systemctl stop tomcat8-2
systemctl stop tomcat8-3

tomcat8-instance-create -p 8081 -c 8006 -a 8009 tomcat8-1
tomcat8-instance-create -p 8082 -c 8007 -a 8010 tomcat8-2
tomcat8-instance-create -p 8083 -c 8008 -a 8011 tomcat8-3

systemctl start tomcat8-1
systemctl start tomcat8-2
systemctl start tomcat8-3
