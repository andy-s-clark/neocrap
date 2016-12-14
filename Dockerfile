FROM centos:centos6.8

# Install envsubst
RUN yum install -y gettext \
  && yum clean all

ENV DEFAULT_DSN_DATABASE=''
ENV DEFAULT_DSN_DESCRIPTION='Configured using docker-entrypoint'
ENV DEFAULT_DSN_DRIVER='mssql'
ENV DEFAULT_DSN_HOST='dbserver'
ENV DEFAULT_DSN_INSTANCE=''
ENV DEFAULT_DSN_MAXPOOLSTATEMENTS='100'
ENV DEFAULT_DSN_NAME=''
ENV DEFAULT_DSN_PASSWORD=''
ENV DEFAULT_DSN_PORT='1433'
ENV DEFAULT_DSN_QUERYTIMEOUT='0'
ENV DEFAULT_DSN_USER='dbuser'
ENV DATASOURCES=''

ENV ENTRYPOINT_BASE='/opt/docker-entrypoint'
ENV NEO_PATH='/opt/neocrap'

RUN mkdir -p ${ENTRYPOINT_BASE} ${NEO_PATH}
COPY docker-entrypoint ${ENTRYPOINT_BASE}/
RUN chmod a+x ${ENTRYPOINT_BASE}/entrypoint.sh ${ENTRYPOINT_BASE}/entrypoint.d/*

ENTRYPOINT ["/opt/docker-entrypoint/entrypoint.sh"]
CMD ["cat", "/opt/neocrap/neo-datasource.xml"]
