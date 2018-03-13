# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.2
MAINTAINER bingo <bingov5@icloud.com>

ENV ES_JAVA_OPTS "-Xmx256m -Xms256m"

ADD https://github.com/bingozb/docker-elasticsearch/blob/master/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

RUN chmod -R 0775 /usr/share/elasticsearch/config

EXPOSE 9200 9300
