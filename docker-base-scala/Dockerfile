FROM wguo32:docker-base

MAINTAINER wguo32

ARG scala_version=2.12.4
ENV SCALA_VERSION=$scala_version
#
RUN wget https://downloads.lightbend.com/scala/2.12.4/${SCALA_VERSION}.tgz && \
	tar -xzf scala-2.12.4.tgz && \
	rm scala-2.12.4.tgz

ENV SCALA_HOME=/opt/scala-2.12.4
ENV PATH=$PATH:$SCALA_HOME/bin