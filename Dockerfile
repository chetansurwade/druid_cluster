FROM anapsix/alpine-java:8_server-jre_unlimited
# Druid env variable
ENV DRUID_VERSION                   0.22.1
ENV DB_TYPE                         postgresql
ENV DB_HOST                         postgres
ENV DB_PORT                         5432
ENV DB_DBNAME                       druid
ENV ZOOKEEPER_HOST                  zookeeper
ENV DRUID_XMX                       '-'
ENV DRUID_XMS                       '-'
ENV DRUID_NEWSIZE                   '-'
ENV DRUID_MAXNEWSIZE                '-'
ENV DRUID_HOSTNAME                  '-'
ENV DRUID_LOGLEVEL                  '-'
ENV DRUID_USE_CONTAINER_IP          '-'
ENV DRUID_SEGMENTCACHE_LOCATION     '-'
ENV DRUID_DEEPSTORAGE_LOCAL_DIR     '-'
ENV S3_STORAGE_BUCKET               '-'
ENV S3_INDEXING_BUCKET              '-'
ENV S3_ACCESS_KEY                   '-'
ENV S3_SECRET_KEY                   '-'
ENV S3_STORAGE_BUCKET               '-'
ENV S3_INDEXING_BUCKET              '-'
ENV AWS_REGION                      us-east-1

RUN apk update \
      && apk add --no-cache bash curl \
      && mkdir /tmp/druid \
      && curl \
      https://downloads.apache.org/druid/$DRUID_VERSION/apache-druid-$DRUID_VERSION-bin.tar.gz | tar -xzf - -C /opt \
      && ln -s /opt/apache-druid-$DRUID_VERSION /opt/druid

COPY conf /opt/druid/conf
COPY druid.sh /druid.sh
WORKDIR /opt/druid
ENTRYPOINT ["/druid.sh"]
