FROM alpine

RUN apk --no-cache add curl
RUN curl -sL -o /usr/bin/cloudflared \
    https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
RUN chmod +x /usr/bin/cloudflared
COPY cloudflared.sh /usr/bin/cloudflared.sh
CMD sh /usr/bin/cloudflared.sh
