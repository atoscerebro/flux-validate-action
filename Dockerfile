FROM alpine:3.15

ENV KUSTOMIZE_VER 4.5.1
ENV KUBEVAL_VER 0.16.1

RUN apk --no-cache add bash curl yq

RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VER}/kustomize_v${KUSTOMIZE_VER}_linux_amd64.tar.gz | tar xvz -C /usr/local/bin kustomize

RUN curl -L https://github.com/instrumenta/kubeval/releases/download/v${KUBEVAL_VER}/kubeval-linux-amd64.tar.gz | tar xvz -C /usr/local/bin kubeval

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
