FROM alpine:3.5
RUN apk add -qU --no-cache nodejs \
    && npm install stylus -g \
    && mkdir /input /output
VOLUME ["/input", "/output"]
ENTRYPOINT ["stylus"]
