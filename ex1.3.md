Now that we've warmed up it's time to get inside a container while it's running!

Image `devopsdockeruh/simple-web-service:ubuntu` will start a container that outputs logs into a file. Go inside the running container and use `tail -f ./text.log` to follow the logs. Every 10 seconds the clock will send you a "secret message".

Submit the secret message and command(s) given as your answer.

```sh
$ docker run -d -it --name asdf devopsdockeruh/simple-web-service:ubuntu 
Unable to find image 'devopsdockeruh/simple-web-service:ubuntu' locally
ubuntu: Pulling from devopsdockeruh/simple-web-service
5d3b2c2d21bb: Pull complete 
3fc2062ea667: Pull complete 
75adf526d75b: Pull complete 
965d4bbb586a: Pull complete 
4f4fb700ef54: Pull complete 
Digest: sha256:d44e1dce398732e18c7c2bad9416a072f719af33498302b02929d4c112e88d2a
Status: Downloaded newer image for devopsdockeruh/simple-web-service:ubuntu
4c95f534bfbd7fd828c3ce1dbaa14899a494ac4ce8e020146541870389004578
$ docker ps
CONTAINER ID   IMAGE                                      COMMAND                  CREATED          STATUS          PORTS     NAMES
4c95f534bfbd   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    7 seconds ago    Up 6 seconds              asdf
dc8b0963c88e   ubuntu                                     "sh -c 'while true; …"   13 minutes ago   Up 13 minutes             looper-it
$ docker attach asdf
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
read escape sequence
$ docker exec asdf tail -f text.log
2024-03-07 07:14:31 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-07 07:14:33 +0000 UTC
2024-03-07 07:14:35 +0000 UTC
2024-03-07 07:14:37 +0000 UTC
2024-03-07 07:14:39 +0000 UTC
2024-03-07 07:14:41 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-07 07:14:43 +0000 UTC
2024-03-07 07:14:45 +0000 UTC
2024-03-07 07:14:47 +0000 UTC
2024-03-07 07:14:49 +0000 UTC
2024-03-07 07:14:51 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-07 07:14:53 +0000 UTC
2024-03-07 07:14:55 +0000 UTC
2024-03-07 07:14:57 +0000 UTC
2024-03-07 07:14:59 +0000 UTC
2024-03-07 07:15:01 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-03-07 07:15:03 +0000 UTC
^C
```

The secret message is `You can find the source code here: https://github.com/docker-hy`
