FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update&&apt upgrade -y&&apt install python3-pip tzdata -y
RUN pip3 install apt-select&&apt-select --country CN&&mv sources.list /etc/apt/
ENV TZ=Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
