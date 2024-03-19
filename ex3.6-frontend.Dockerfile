FROM node:16-alpine3.18 AS builder

WORKDIR /usr/src/app/

ARG BACKEND_URL
ENV REACT_APP_BACKEND_URL=${BACKEND_URL:-http://localhost:8080}

RUN \
    apk add --no-cache git &&\
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-frontend/* . &&\
    rm -rf tmp_repo &&\
    npm install &&\
    npm run build


FROM nginx:1.25-alpine

COPY --from=builder /usr/src/app/build /usr/share/nginx/html
