FROM debian:buster
MAINTAINER angelroybernal

RUN DEBIAN_FRONTEND=noninteractive && \
apt-get update \
&& apt-get upgrade -yq \
&& apt-get install -yq \
tor 

RUN useradd tor \
&& mkdir /home/tor \
&& chown -R tor:tor /home/tor

COPY ./torrc /etc/tor/torrc
USER tor

EXPOSE 9050

ENTRYPOINT ["tor"]
