#!/bin/sh

echo "============= Booting up ELK ============="
echo " "

echo " Starting Elasticsearch... "
elasticsearch/bin/elasticsearch -E http.host=0.0.0.0 --quiet
echo " Starting Elasticsearch Complete "
echo " "

echo " Starting Kibana... "
kibana/bin/kibana --host 0.0.0.0 -Q
echo " Starting Kibana Complete "
echo " "

echo " Starting Logstash... "
logstash/bin/logstash -f /tmp/elk/configs/logstash.conf
echo " Starting Logstash Complete "
echo " "

echo "============= ELK stack is up ============="
echo " "
echo " For Logstash log: tail -f logstash/logs/logstash-plain.log"