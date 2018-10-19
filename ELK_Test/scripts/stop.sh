#!/bin/sh

echo "  ============= Stopping ELK ============="
echo " "

echo "    Stopping Elasticsearch... "
ps -ef | grep elasticsearch | grep -v grep | awk '{print $1}' | xargs kill
echo "    Stopping Elasticsearch Complete "
echo " "

echo "    Stopping Kibana... "
ps -ef | grep kibana | grep -v grep | awk '{print $1}' | xargs kill
echo "    Stopping Kibana Complete "
echo " "

echo "    Stopping Logstash... "
ps -ef | grep logstash | grep -v grep | awk '{print $1}' | xargs kill
echo "    Stopping Logstash Complete "
echo " "

echo "  ============= ELK stack is down ============="