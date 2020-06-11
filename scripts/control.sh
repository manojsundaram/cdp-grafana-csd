#!/bin/bash
CMD=$1

case $CMD in
  (start)
    echo "Starting the grafana web server based on config from $GRAFANA_CONFIG_FILE"
    exec /opt/cloudera/parcels/CDP_GRAFANA/bin/grafana-server --homepath /opt/cloudera/parcels/CDP_GRAFANA --config $GRAFANA_CONFIG_FILE
    ;;
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
