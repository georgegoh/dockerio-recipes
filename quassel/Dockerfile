# Create a proxy server.
# To build:
#   $ sudo docker build -t <container-name> .
# To run:
#   $ sudo docker run -p <public-port>:4242 -d <container-name>
#
FROM fedora
MAINTAINER George Goh "georgegohkokleong@gmail.com"
ENV DESTDIR /opt/vpn_quassel

RUN yum -y update
RUN yum -y install quassel-core openvpn vpnc net-tools

RUN mkdir $DESTDIR
VOLUME $DESTDIR

EXPOSE 4242

ENTRYPOINT ["/opt/vpn_quassel/start.sh"]
