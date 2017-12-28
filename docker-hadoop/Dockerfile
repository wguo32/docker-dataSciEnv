FROM wguo32/docker-base

MAINTAINER wguo32

WORKDIR /opt
ARG hadoop_version=2.7.5
ENV HADOOP_VERSION=$hadoop_version

# install hadoop 2.7.5
RUN wget -O hadoop-2.7.5.tar.gz https://master.dl.sourceforge.net/project/dockered-hadoop/${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz  && \
    tar -xzf hadoop-${HADOOP_VERSION}.tar.gz && \
    rm hadoop-${HADOOP_VERSION}.tar.gz

# set environment variable
ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

RUN mkdir -p /opt/data/hdfs/namenode && \ 
    mkdir -p /opt/data/hdfs/datanode && \
    mkdir -p /opt/data/hdfs/logs

COPY config/* /tmp/

RUN mv /tmp/ssh_config ~/.ssh/config && \
    mv /tmp/hadoop-env.sh $HADOOP_HOME/etc/hadoop/hadoop-env.sh && \
    mv /tmp/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml && \ 
    mv /tmp/core-site.xml $HADOOP_HOME/etc/hadoop/core-site.xml && \
    mv /tmp/mapred-site.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml && \
    mv /tmp/yarn-site.xml $HADOOP_HOME/etc/hadoop/yarn-site.xml && \
    mv /tmp/slaves $HADOOP_HOME/etc/hadoop/slaves && \
    mv /tmp/start-hadoop.sh ~/start-hadoop.sh && \
    mv /tmp/stop-hadoop.sh ~/stop-hadoop.sh && \
    mv /tmp/run-wordcount.sh ~/run-wordcount.sh 

RUN chmod +x ~/start-hadoop.sh && \
    chmod +x ~/stop-hadoop.sh && \
    chmod +x ~/run-wordcount.sh && \
    chmod +x $HADOOP_HOME/sbin/start-dfs.sh && \
    chmod +x $HADOOP_HOME/sbin/start-yarn.sh 

# format namenode
#RUN $HADOOP_HOME/bin/hdfs namenode -format

CMD [ "sh", "-c", "service ssh start; bash"]
#RUN service ssh start

