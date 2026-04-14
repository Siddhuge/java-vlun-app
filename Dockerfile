FROM ubuntu:18.04

# DO NOT run apt-get upgrade
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openssl \
        curl && \
    rm -rf /var/lib/apt/lists/*

# 🔥 Force outdated snapshot
RUN echo "deb http://snapshot.debian.org/archive/ubuntu/20190101T000000Z bionic main" > /etc/apt/sources.list

CMD ["bash"]
