#DockerFile Filebeats

FROM docker.elastic.co/beats/filebeat:6.2.2

MAINTAINER Gabriel Pellegrini

USER root

COPY ./logs /var/logs

RUN chown filebeat /usr/share/filebeat/filebeat.yml

COPY ./filebeat.yml /usr/share/filebeat/filebeat.yml

RUN chmod 777 /var/logs/

USER filebeat