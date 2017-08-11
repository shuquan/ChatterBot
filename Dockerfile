FROM ubuntu:16.04
MAINTAINER Shuquan Huang

RUN apt-get update && apt-get install -y --no-install-recommends \
                   python-pip \
                   python-setuptools \
                   vim

RUN mkdir -p /opt/ChatterBot

COPY . /opt/ChatterBot

WORKDIR /opt

RUN pip install ./ChatterBot
