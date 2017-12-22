FROM wguo32/docker-base

MAINTAINER wguo

ENV ZOOKEEPER_VERSION 3.4.10

#Download Zookeeper
RUN wget http://www.gtlib.gatech.edu/pub/apache/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz  && \
	tar -xzf zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt && \
	rm zookeeper-${ZOOKEEPER_VERSION}.tar.gz


#Configure
RUN cp /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo_sample.cfg /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo.cfg

ENV ZK_HOME=/opt/zookeeper-${ZOOKEEPER_VERSION}
ENV PATH=$PATH:$ZK_HOME/bin
RUN mkdir $ZK_HOME/data

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper-${ZOOKEEPER_VERSION}
VOLUME ["/opt/zookeeper-${ZOOKEEPER_VERSION}/conf", "/opt/zookeeper-${ZOOKEEPER_VERSION}/data"]

CMD zkServer.sh start
