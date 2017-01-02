FROM alpine:3.5

RUN apk update && \
    apk add ca-certificates && \
    update-ca-certificates && \
    apk add openssl && \
    wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip && \
    mv -v ngrok /usr/sbin/ && \
    rm -v ngrok-stable-linux-amd64.zip && \
    apk del ca-certificates 

ENTRYPOINT ["/usr/sbin/ngrok"]