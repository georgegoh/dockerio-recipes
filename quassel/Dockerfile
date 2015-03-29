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

# Set up OpenVPN
ADD src/vpnconfig.conf /etc/openvpn/config.conf

EXPOSE 4242

ENTRYPOINT ["/usr/sbin/openvpn", "--config", "/etc/openvpn/config.conf", "--up", "/opt/vpn_quassel/start.sh"]
