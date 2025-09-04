FROM ubuntu:24.04

# ติดตั้ง Squid และ apache2-utils
RUN apt-get update && \
    apt-get install -y squid apache2-utils && \
    rm -rf /var/lib/apt/lists/*

# Copy squid.conf
COPY ./conf/squid.conf /etc/squid/squid.conf

# ตั้ง entrypoint
ENTRYPOINT ["/bin/bash", "-c", "htpasswd -bc /etc/squid/passwd $SQUID_USER $SQUID_PASSWORD && squid -N -f /etc/squid/squid.conf"]
