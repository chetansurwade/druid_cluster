# Druid Cluster Locally
A fully functional druid cluster on your local machine with AWS s3 as deep storage configuration.

Tags:

- 0.17.0, latest

What is Druid?
==================

Druid is an open-source analytics data store designed for business intelligence (OLAP) queries on event data. Druid provides low latency (real-time) data ingestion, flexible data exploration, and fast data aggregation. Existing Druid deployments have scaled to trillions of events and petabytes of data. Druid is most commonly used to power user-facing analytic applications.


Configuration
=============

Available environment options for druid tuning:

- `DRUID_XMX` '-'
- `DRUID_XMS` '-'
- `DRUID_NEWSIZE` '-'
- `DRUID_MAXNEWSIZE` '-'
- `DRUID_HOSTNAME` '-'
- `DRUID_SEGMENTCACHE_LOCATION` '-'
- `DRUID_LOGLEVEL` '-'
- `DRUID_USE_CONTAINER_IP` '-'
- `DRUID_DEEPSTORAGE_LOCAL_DIR` '-'

Available environment options for AWS s3 config:

- `S3_STORAGE_BUCKET` '-'
- `S3_INDEXING_BUCKET` '-'
- `S3_ACCESS_KEY` '-'
- `S3_SECRET_KEY` '-'
- `S3_STORAGE_BUCKET` '-'
- `S3_INDEXING_BUCKET` '-'
- `AWS_REGION` '-'

Available environment options for database config:

- `DB_TYPE` '-'
- `DB_HOST` '-'
- `DB_PORT` '-'
- `DB_DBNAME` '-'
- `DB_USERNAME` '-'
- `DB_PASSWORD` '-'

Authors
=======
- Chetan Surwade <chetansurwade@outlook.com>

Special thanks goes to:  
- Maciej Bryński <maciek@brynski.pl>
- Said Apale <saidimu@gmail.com>
- Kristian Martensen <kma@cima.dk>  
- Jean-Baptiste DALIDO <jb@zen.ly>
- Clément REY <clement@zen.ly>
