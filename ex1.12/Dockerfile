FROM node:16

WORKDIR /usr/src/app/

RUN \
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-frontend/* . &&\
    rm -rf tmp_repo

ARG BACKEND_URL

RUN npm install

# this is added in ex1.14, modded in ex2.10
ENV REACT_APP_BACKEND_URL=${BACKEND_URL:-http://localhost:8080}

RUN npm run build

RUN npm install -g serve

# added in ex3.5
RUN useradd matti
USER matti

CMD ["serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
