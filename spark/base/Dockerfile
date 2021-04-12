FROM alpine:3.10

## From https://github.com/big-data-europe/docker-spark/
## Made changes for my specific needs

ENV SPARK_VERSION=3.1.1
ENV HADOOP_VERSION=2.7

RUN apk add --no-cache curl bash openjdk8-jre python3 py-pip nss libc6-compat \
      && ln -s /lib64/ld-linux-x86-64.so.2 /lib/ld-linux-x86-64.so.2

COPY spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz spark.tgz

RUN set -x \
    && tar -xzvf /spark.tgz -C / \
    && mv /spark-* spark \
    && rm /spark.tgz

COPY ["conf/", "./spark/conf/"]

ENV PYTHONHASHSEED 1
