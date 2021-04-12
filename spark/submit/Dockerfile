FROM  spark-base

## From https://github.com/big-data-europe/docker-spark/
## Made changes for my specific needs

ENV SPARK_MASTER_URL="spark://spark-master:7077"

# For remote debugging
EXPOSE 5005 9010 4040

COPY spark-submit.sh /

CMD ["/bin/bash", "/spark-submit.sh"]