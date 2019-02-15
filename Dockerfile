FROM alpine:3.8

LABEL maintainer="Quoine DevOps Team <devops@quoine.com>"

COPY assets/ /opt/resource
RUN cd /opt/resource && \
    chmod +x \
        check \
        in \
        out

RUN apk add --no-cache bash jq curl \
    && rm -rf /var/cache/apk/*