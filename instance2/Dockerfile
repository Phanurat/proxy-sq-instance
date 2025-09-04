FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y squid apache2-utils && \
    rm -rf /var/lib/apt/lists/*

# COPY จากโฟลเดอร์ conf/
COPY conf/squid.conf /etc/squid/squid.conf

CMD ["/bin/bash", "-c", "htpasswd -bc /etc/squid/passwd $SQUID_USER $SQUID_PASSWORD && squid -N -f /etc/squid/squid.conf"]
