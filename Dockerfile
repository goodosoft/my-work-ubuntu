FROM ubuntu:22.04

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update&&apt-get install -y apt-transport-https ca-certificates
COPY sources.list /etc/apt/sources.list
RUN apt update&&apt upgrade -y&&apt install -y python3-pip tzdata net-tools telnet lsof strace tcpdump traceroute ftp clang
ENV TZ=Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
