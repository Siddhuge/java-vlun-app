FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y openssl=1.1.1 curl=7.58.0

CMD ["bash"]
