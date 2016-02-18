FROM icehook/centos-7-base:0.1

MAINTAINER IceHook Systems

RUN yum -y update
RUN yum install -y flex lynx xsltproc

WORKDIR /usr/local/src

RUN mkdir -p /usr/local/src/rtpengine
RUN git clone https://github.com/sipwise/rtpengine.git /usr/local/src/rtpengine
WORKDIR /usr/local/src/rtpengine
RUN git checkout -t origin/mr4.0.1
WORKDIR /usr/local/src/rtpengine/daemon
RUN make
RUN mkdir -p /usr/local/rtpengine
RUN cp rtpengine /usr/local/rtpengine/

ADD /bootstrap.sh /bootstrap.sh
RUN chown root:root /bootstrap.sh && chmod 700 /bootstrap.sh
ENV BOOTSTRAP /bootstrap.sh

CMD ["/bootstrap.sh", "-d"]
