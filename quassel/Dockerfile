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
RUN yum -y install quassel-core openvpn

RUN mkdir $DESTDIR
VOLUME $DESTDIR

EXPOSE 4242

ENTRYPOINT ["/usr/sbin/openvpn", "--config", "/opt/vpn_quassel/vpnconfig.conf", "--up", "/opt/vpn_quassel/start.sh"]
