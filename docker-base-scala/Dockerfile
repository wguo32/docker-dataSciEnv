FROM wguo32/docker-base

MAINTAINER wguo32

ARG scala_version=2.12.4
ENV SCALA_VERSION=$scala_version

RUN wget https://downloads.lightbend.com/scala/2.12.4/scala-${SCALA_VERSION}.tgz && \
	tar -xzf scala-${SCALA_VERSION}.tgz -C /opt && \
	rm scala-${SCALA_VERSION}.tgz

ENV SCALA_HOME=/opt/scala-${SCALA_VERSION}
ENV PATH=$PATH:$SCALA_HOME/bin