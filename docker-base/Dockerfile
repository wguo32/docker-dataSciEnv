FROM ubuntu:16.04

MAINTAINER wguo32

WORKDIR /opt
ARG java_version=8
ENV JAVA_VERSION=$java_version

# install openssh-server, openjdk and wget
RUN apt-get update && apt-get install -y openssh-server openjdk-${JAVA_VERSION}-jdk wget hostname

# set environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 
ENV PATH=$PATH:JAVA_HOME/bin

# ssh without key
RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

EXPOSE 22

CMD [ "sh", "-c", "service ssh start; bash"]

