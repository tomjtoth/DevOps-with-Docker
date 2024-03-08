In this exercise, we won't create a new Dockerfile.

The image `devopsdockeruh/simple-web-service` will start a web service in port `8080` when given the argument "server". In Exercise 1.8 you already did a image that can be used to run the web service without any argument.

Use now the -p flag to access the contents with your browser. The output to your browser should be something like: `{ message: "You connected to the following path: ...`

Submit your used commands for this exercise.

```sh
$ docker run -p 127.0.0.1:8080:8080 -it web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2024/03/08 - 08:21:41 | 200 |      31.474µs |      172.17.0.1 | GET      "/"
[GIN] 2024/03/08 - 08:21:41 | 200 |      30.591µs |      172.17.0.1 | GET      "/favicon.ico"
^C
```

The below screenshot was naturally taken before I terminated the container.

![screenshot from ffox](<screenshot.png>)
