FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        openssl \
        curl \
        bash \
        libssl1.1

CMD ["bash"]
