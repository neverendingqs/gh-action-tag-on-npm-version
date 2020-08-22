FROM neverendingqs/node-lts-git-hub-image:latest

WORKDIR /action

RUN apt-get install -y jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]