before ex3.6

```sh
[test@T14 ~]$ docker image ls
REPOSITORY                    TAG           IMAGE ID       CREATED         SIZE
devops-with-docker-frontend   latest        b0c771cb18cb   9 minutes ago   1.27GB
devops-with-docker-backend    latest        73e8bded01a8   9 minutes ago   1.07GB
```
so 1.27 + 1.07 GB

After joining ALL `RUN` commands I get the same result, probably because most of the related commands were already joined previously...

```sh
REPOSITORY                    TAG       IMAGE ID       CREATED              SIZE
devops-with-docker-frontend   latest    611d9aec7e1f   53 seconds ago       1.27GB
devops-with-docker-backend    latest    358afe971048   About a minute ago   1.07GB
```
still 1.27 + 1.07 GB
