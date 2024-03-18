Even with using `FROM node:16-alpine3.18` a 2nd time, the size further decreased from 479 to 119 MB. Perhaps a cleanup would have the same results (?)

```sh
$ docker image ls
REPOSITORY                    TAG             IMAGE ID       CREATED              SIZE
devops-with-docker-frontend   latest          7638eb854851   About a minute ago   119MB
```
