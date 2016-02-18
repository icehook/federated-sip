FROM icehook/centos-7-base:0.1

MAINTAINER IceHook Systems

RUN yum -y update
RUN yum install -y flex lynx xsltproc

WORKDIR /root

RUN git clone https://github.com/icehook/federated-sip.git /root/federated-sip
WORKDIR /root/federated-sip
RUN bash scripts/install.sh

ADD /bootstrap.sh /bootstrap.sh
RUN chown root:root /bootstrap.sh && chmod 700 /bootstrap.sh
ENV BOOTSTRAP /bootstrap.sh

CMD ["/bootstrap.sh", "-d"]
