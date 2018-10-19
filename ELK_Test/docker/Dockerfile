FROM openjdk:jre-alpine

LABEL maintainer "janith <jeewantha.janith@gmail.com>"

ARG elk_version=6.4.2

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk add --quiet --no-progress --no-cache nodejs wget jruby \
 && adduser -D elasticsearch

USER elasticsearch

WORKDIR /home/elasticsearch

ENV ES_TMPDIR=/home/elasticsearch/elasticsearch.tmp

COPY ./stack/elasticsearch-oss-6.4.2.tar.gz ./stack/kibana-oss-6.4.2-linux-x86_64.tar.gz ./stack/logstash-6.4.2.tar.gz run.sh /home/elasticsearch/

RUN \
 #chmod +x run.sh && \
 tar -zxf elasticsearch-oss-6.4.2.tar.gz \
 && mv elasticsearch-${elk_version} elasticsearch \
 && mkdir -p ${ES_TMPDIR} \
 && echo 'elasticsearch installed' \
 \
 && tar -zxf kibana-oss-6.4.2-linux-x86_64.tar.gz \
 && mv kibana-${elk_version}-linux-x86_64 kibana \
 && rm -f kibana/node/bin/node kibana/node/bin/npm \
 && ln -s $(which node) kibana/node/bin/node \
 && ln -s $(which npm) kibana/node/bin/npm \
 && echo 'kibana installed' \
 \
 && tar -zxf logstash-6.4.2.tar.gz \
 && mv logstash-${elk_version} logstash \
 && echo 'logstash installed'
 
 #ENTRYPOINT sh elasticsearch/bin/elasticsearch -E http.host=0.0.0.0 --quiet & kibana/bin/kibana --host 0.0.0.0 -Q && sh logstash/bin/logstash -f /tmp/elk/configs/logstash.conf

EXPOSE 9200 5601 9600
