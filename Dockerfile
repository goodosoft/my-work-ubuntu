FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get install -y apt-transport-https ca-certificates
COPY sources.list /etc/apt/sources.list
RUN apt update&&apt upgrade -y&&apt install python3-pip tzdata -y
ENV TZ=Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
