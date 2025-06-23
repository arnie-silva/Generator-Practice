FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \ 
    git \
    build-essential \
    libyaml-dev

RUN pip3 install --break-system-packages --upgrade pip setuptools wheel && \
    pip3 install --break-system-packages PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]