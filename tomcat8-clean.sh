#!/bin/sh

INSTANCE=$1

if [ -z "${INSTANCE}" ]; then
  echo "Error: No INSTANCE specified."
  exit 1
fi

rm -Rf /var/log/${INSTANCE}
rm -Rf /var/lib/${INSTANCE}
rm -Rf /var/tmp/${INSTANCE}
rm -Rf /var/cache/${INSTANCE}
rm -Rf /etc/${INSTANCE}

rm -f /etc/systemd/system/${INSTANCE}.service

rm -Rf /usr/share/tomcat8/common
rm -Rf /usr/share/tomcat8/server
rm -Rf /usr/share/tomcat8/shared
