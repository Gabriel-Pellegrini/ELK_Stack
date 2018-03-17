#Dockerfile logstash

FROM docker.elastic.co/logstash/logstash:6.2.2

MAINTAINER Gabriel Pellegrini

RUN rm -f /usr/share/logstash/logstash.conf

COPY . etc/logstash/conf.d

WORKDIR  /usr/share/logstash

EXPOSE 5044

