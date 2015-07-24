FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /data

# set up user
RUN groupadd --gid 1000 ownport && \
    useradd --uid 1000 --gid 1000 ownport && \
    chown -R ownport.ownport /data

USER ownport
VOLUME /data

