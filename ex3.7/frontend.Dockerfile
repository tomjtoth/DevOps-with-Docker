FROM node:16-alpine3.18

WORKDIR /usr/src/app/

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN \
    apk add --no-cache git &&\
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-frontend/* . &&\
    rm -rf tmp_repo &&\
    apk del git &&\
    npm install &&\
    npm run build &&\
    npm install -g serve &&\
    adduser --no-create-home --disabled-password --gecos "" matti

USER matti

CMD ["serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
