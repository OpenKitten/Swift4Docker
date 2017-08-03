FROM ubuntu:16.04
MAINTAINER Joannis Orlandos <joannis@openkitten.org>
LABEL description="Compiles and runs a Swift 4 project"

ENV HOME /root
ENV WORK_DIR /root
WORKDIR /root

RUN apt-get update; apt-get install -y \
  clang \
  git \
  libicu-dev \
  wget \
  libcurl4-openssl-dev \
  libssl-dev

RUN wget https://swift.org/builds/swift-4.0-branch/ubuntu1604/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-07-20-a/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-07-20-a-ubuntu16.04.tar.gz
RUN tar xzvf swift-4.0-DEVELOPMENT-SNAPSHOT-2017-07-20-a-ubuntu16.04.tar.gz -C /root
ENV PATH /root/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-07-20-a-ubuntu16.04/usr/bin:$PATH

EXPOSE 8080

COPY /run.sh /
ENTRYPOINT ["bash", "/run.sh"]
