FROM openjdk:8u212-alpine3.9

ENV APACHE_SPARK_VERSION 3.1.1
ENV APACHE_HADOOP_VERSION 2.7.0
ENV ZEPPELIN_VERSION 0.9.0

RUN apk add --no-cache --update bash

COPY zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz /zeppelin.tgz

RUN set -x \
    && tar -xzvf /zeppelin.tgz -C / \
    && mv /zeppelin-* /zeppelin \
    && rm /zeppelin.tgz

RUN rm -r tmp var/cache var/log

WORKDIR /zeppelin/interpreter

RUN rm -r alluxio angular beam bigquery cassandra elasticsearch file geode groovy hbase ignite jdbc kylin lens livy  pig r scalding scio hazelcastjet  sap kotlin submarine flink mongodb neo4j influxdb spark/R/

WORKDIR /zeppelin

RUN rm -r LICENSE licenses NOTICE README.md plugins k8s
RUN find bin -type f -name "*.cmd" -exec rm {} \;


RUN chmod +x bin/zeppelin.sh
ENTRYPOINT ["/bin/bash", "/zeppelin/bin/zeppelin.sh"]