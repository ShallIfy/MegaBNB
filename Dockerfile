FROM ubuntu:24.04

WORKDIR /app

# Set UTF-8 support
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt update && apt install -y curl ca-certificates && apt clean

RUN curl -L -o megabnb https://github.com/ShallIfy/MegaBNB/releases/download/v1.0.0/megabnb && \
    chmod +x megabnb

COPY config/wallet.txt /app/config/wallet.txt
COPY config/proxy.txt /app/config/proxy.txt

ENTRYPOINT ["./megabnb"]
