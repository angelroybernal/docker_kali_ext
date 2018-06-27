FROM kalilinux/kali-linux-docker
MAINTAINER angelroybernal

RUN DEBIAN_FRONTEND=noninteractive && \
apt-get update \
&& apt-get upgrade -yq \
&& apt-get install -yq \
nmap tor proxychains \
joomscan whois sslyze \
curl wget


RUN useradd tor \
&& mkdir /home/tor \
&& chown -R tor:tor /home/tor
RUN mkdir /tmp/files

ENTRYPOINT ["/bin/su","tor","-c","tor"]
