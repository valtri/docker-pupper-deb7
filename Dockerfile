FROM debian:7
MAINTAINER František Dvořák <valtri@civ.zcu.cz>

# ==== puppet ====

RUN apt-get update \
&& apt-get install -y wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -P /tmp \
&& dpkg -i /tmp/puppetlabs-release-wheezy.deb \
&& rm -fv /tmp/puppetlabs-release-wheezy.deb

RUN apt-get update \
&& apt-get install -y puppet \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
