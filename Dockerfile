FROM ubuntu:24.04

RUN rm -f /etc/apt/sources.list.d/*
ADD pop.tgz /
# note this way of installing pop-keyring is the weak point in the security chain
# apt-get install -d --print-uris pop-keyring
#ADD http://apt.pop-os.org/release/pool/noble/keyring/356a75e405d00a23889998d2e8f2508a9e67b535/pop-keyring_1.0.0%7e1641313934%7e24.04%7e356a75e_all.deb /
#RUN dpkg -i /*.deb && rm /*.deb
RUN apt-get --allow-unauthenticated -o Acquire::AllowInsecureRepositories=true update \
 && apt-get --allow-unauthenticated install pop-keyring \
 && apt-get clean
RUN apt-get update \
 && apt-get -y dist-upgrade \
 && apt-get clean

# convenience
RUN apt-get update \
 && apt-get -y install nano wget \
 && apt-get clean
