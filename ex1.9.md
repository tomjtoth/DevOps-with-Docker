In this exercise we won't create a new Dockerfile.

Image `devopsdockeruh/simple-web-service` creates a timestamp every two seconds to /usr/src/app/text.log when it's not given a command. Start the container with bind mount so that the logs are created into your filesystem.

Submit the command you used to complete the exercise.

Hint: read the note that was made just before this exercise!

```sh
$ touch text.log
$ docker run -v "$(pwd)/text.log:/usr/src/app/text.log" -it --name asdf devopsdockeruh/simple-web-service
Starting log output
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
^C
$ cat text.log 
2024-03-08 08:10:57 +0000 UTC
2024-03-08 08:10:59 +0000 UTC
2024-03-08 08:11:01 +0000 UTC
2024-03-08 08:11:03 +0000 UTC
```