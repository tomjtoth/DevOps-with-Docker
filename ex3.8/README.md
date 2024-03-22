Size reduced to ~9% of the original alpine build. Nice. nginx.conf had to be updated since another nginx container is serving the built static files, and it listens on `:80`.

```sh
$ docker image ls
REPOSITORY              TAG           IMAGE ID       CREATED              SIZE
ex38-frontend           latest        3473debcc4b7   About a minute ago   43.7MB
ex37-frontend           latest        d81aba2e29a0   8 minutes ago        479MB
```
