FROM wguo32/docker-base-scala

WORKDIR /opt

ARG kafka_version=1.0.0
ARG scala_version_major=2.12
ENV SCALA_VERSION_MAJOR=$scala_version
ENV KAFKA_VERSION=$kafka_version 

MAINTAINER wguo32

#RUN apk add --update unzip wget curl docker jq coreutils

RUN wget ftp://apache.cs.utah.edu/apache.org/kafka/1.0.0/kafka_${SCALA_VERSION_MAJOR}-${KAFKA_VERSION}.tgz && \
	tar -xzf kafka_${SCALA_VERSION_MAJOR}-${KAFKA_VERSION}.tgz -C /opt && \
	rm kafka_${SCALA_VERSION_MAJOR}-${KAFKA_VERSION}.tgz

VOLUME ["/kafka"]

ENV KAFKA_HOME /opt/kafka
ENV PATH ${PATH}:${KAFKA_HOME}/bin

ADD start-kafka.sh /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
ADD create-topics.sh /usr/bin/create-topics.sh
# The scripts need to have executable permission
RUN chmod a+x /usr/bin/start-kafka.sh && \
    chmod a+x /usr/bin/broker-list.sh && \
    chmod a+x /usr/bin/create-topics.sh
# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka.sh"]
