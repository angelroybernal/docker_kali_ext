FROM kalilinux/kali-rolling
MAINTAINER angelroybernal

RUN DEBIAN_FRONTEND=noninteractive && \
apt-get update \
&& apt-get upgrade -yq \
&& apt-get install -yq \
nmap proxychains joomscan wpscan \
whois sslyze curl wget \
dnsutils netcat inetutils-ping

COPY ./proxychains.conf /etc/proxychains.conf

ENTRYPOINT ["tail","-f","/dev/null"]
