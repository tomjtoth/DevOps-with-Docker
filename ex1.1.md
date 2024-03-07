Since we already did "Hello, World!" in the material let's do something else.

Start 3 containers from an image that does not automatically exit (such as nginx) in detached mode.

Stop two of the containers and leave one container running.

Submit the output for `docker ps -a` which shows 2 stopped containers and one running.

```sh
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                     PORTS     NAMES
55291f98feaf   nginx     "/docker-entrypoint.…"   9 seconds ago    Up 8 seconds               80/tcp    vigorous_lehmann
48fdebf482c8   nginx     "/docker-entrypoint.…"   10 seconds ago   Exited (0) 2 seconds ago             eloquent_dewdney
46bd16fa473a   nginx     "/docker-entrypoint.…"   12 seconds ago   Exited (0) 2 seconds ago             beautiful_yalow
```