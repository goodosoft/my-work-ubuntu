FROM ubuntu:20.04

RUN apt update&&apt upgrade -y&&apt install python3-pip
RUN pip3 install apt-select&&apt-select --country CN&&mv sources.list /etc/apt/
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
