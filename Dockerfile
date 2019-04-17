# alpine based
FROM k8s-kubectl

LABEL maintainer="NOS Inovação S.A. <nosi.platforms@nos.pt>"

ENV FLUX_LATEST_VERSION="1.12.0"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://github.com/weaveworks/flux/releases/download/${FLUX_LATEST_VERSION}/fluxctl_linux_amd64 -o /usr/local/bin/fluxctl \
 && chmod +x /usr/local/bin/fluxctl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

WORKDIR /root
ENTRYPOINT ["fluxctl"]
CMD ["--help"]