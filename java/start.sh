#!/bin/bash
MYIP=$(hostname -i)
export LOCAL_IP=${LOCAL_IP:-$MYIP}
export ExternalIP=${ExternalIP:-$LOCAL_IP}
exec java \
  -Djava.rmi.server.hostname=${ExternalIP} \
  -Dcom.sun.management.jmxremote=true \
  -Dcom.sun.management.jmxremote.port=1099 \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.ssl=false \
  -Denv=${ENV} -jar <jar_name>
