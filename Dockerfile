FROM ubuntu:22.04

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update&&apt-get install -y apt-transport-https ca-certificates
COPY sources.list /etc/apt/sources.list
RUN apt update&&apt upgrade -y&&apt install -y python3-pip tzdata net-tools telnet lsof strace tcpdump traceroute ftp clang build-essential wget unzip curl
ENV TZ=Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
# install kafka cli
RUN cd /root&&wget https://dlcdn.apache.org/kafka/3.5.0/kafka_2.13-3.5.0.tgz&&tar -xzvf kafka_2.13-3.5.0.tgz&&rm -f kafka_2.13-3.5.0.tgz
RUN cd /root&&wget https://api.pgxn.org/dist/pg_repack/1.4.8/pg_repack-1.4.8.zip&&unzip pg_repack-1.4.8.zip&&rm -f pg_repack-1.4.8.zip
WORKDIR /root

