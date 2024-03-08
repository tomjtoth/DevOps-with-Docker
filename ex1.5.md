In the Exercise 1.3 we used `devopsdockeruh/simple-web-service:ubuntu`.

Here is the same application but instead of Ubuntu is using Alpine Linux: `devopsdockeruh/simple-web-service:alpine`.

Pull both images and compare the image sizes. Go inside the Alpine container and make sure the secret message functionality is the same. Alpine version doesn't have `bash` but it has `sh`, a more bare-bones shell.

```sh
$ docker pull devopsdockeruh/simple-web-service:ubuntu
ubuntu: Pulling from devopsdockeruh/simple-web-service
Digest: sha256:d44e1dce398732e18c7c2bad9416a072f719af33498302b02929d4c112e88d2a
Status: Image is up to date for devopsdockeruh/simple-web-service:ubuntu
docker.io/devopsdockeruh/simple-web-service:ubuntu
$ docker pull devopsdockeruh/simple-web-service:alpine
alpine: Pulling from devopsdockeruh/simple-web-service
ba3557a56b15: Pull complete 
1dace236434b: Pull complete 
4f4fb700ef54: Pull complete 
Digest: sha256:dd4d367476f86b7d7579d3379fe446ae5dfce25480903fb0966fc2e5257e0543
Status: Downloaded newer image for devopsdockeruh/simple-web-service:alpine
docker.io/devopsdockeruh/simple-web-service:alpine
$ docker run -d -it --name uuu devopsdockeruh/simple-web-service:ubuntu
0590172ebeccdddedabfb1b1706f534ea222fead3872e884f49dc6c076478675
$ docker run -d -it --name aaa devopsdockeruh/simple-web-service:alpine
68db14dff235852ad433999b60e8274436eb48535856a3807a2c76d206b286e3
$ docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES
68db14dff235   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   10 seconds ago   Up 9 seconds              aaa
0590172ebecc   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   17 seconds ago   Up 17 seconds             uuu
$ docker exec uuu tail -f text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-08 06:07:21 +0000 UTC
2024-03-08 06:07:23 +0000 UTC
2024-03-08 06:07:25 +0000 UTC
2024-03-08 06:07:27 +0000 UTC
2024-03-08 06:07:29 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-08 06:07:31 +0000 UTC
2024-03-08 06:07:33 +0000 UTC
2024-03-08 06:07:35 +0000 UTC
2024-03-08 06:07:37 +0000 UTC
^C
$ docker exec aaa tail -f text.log
2024-03-08 06:07:27 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-08 06:07:29 +0000 UTC
2024-03-08 06:07:31 +0000 UTC
2024-03-08 06:07:33 +0000 UTC
2024-03-08 06:07:35 +0000 UTC
2024-03-08 06:07:37 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-08 06:07:39 +0000 UTC
2024-03-08 06:07:41 +0000 UTC
2024-03-08 06:07:43 +0000 UTC
^C
$ docker image ls
REPOSITORY                          TAG               IMAGE ID       CREATED       SIZE
fav_distro                          jammy_jellyfish   ca2b0f26964c   9 days ago    77.9MB
ubuntu                              22.04             ca2b0f26964c   9 days ago    77.9MB
ubuntu                              jammy_jellyfish   ca2b0f26964c   9 days ago    77.9MB
ubuntu                              latest            ca2b0f26964c   9 days ago    77.9MB
devopsdockeruh/simple-web-service   ubuntu            4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine            fd312adc88e0   2 years ago   15.7MB
```

Size difference is `15.7MB` vs `83MB`.
