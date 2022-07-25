FROM ubuntu:20.04

RUN apt update&&apt upgrade -y&&apt install python3-pip tzdata -y
RUN pip3 install apt-select&&apt-select --country CN&&mv sources.list /etc/apt/
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

