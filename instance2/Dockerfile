FROM ubuntu:24.04

# ติดตั้ง squid และ htpasswd
RUN apt-get update && \
    apt-get install -y squid apache2-utils && \
    rm -rf /var/lib/apt/lists/*

# คัดลอก squid.conf
COPY squid.conf /etc/squid/squid.conf

# สั่ง run squid และสร้าง passwd
CMD htpasswd -bc /etc/squid/passwd $SQUID_USER $SQUID_PASSWORD && \
    squid -N -f /etc/squid/squid.conf
