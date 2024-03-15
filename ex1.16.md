It is time to wrap up this part and run a containerized app in the cloud.

You can take any web-app, eg. an example or exercise from this part, your own app, or even the course material (see devopsdockeruh/coursepage) and deploy it to some cloud provider.

There are plenty of alternatives, and most provide a free tier. Here are some alternatives that are quite simple to use:

    fly.io (easy to use but needs a credit card even in the free tier)
    render.com (bad documentation, you most likely need google)
    heroku.com (has a free student plan through GitHub Student Developer Pack)

If you know a good cloud service for the purposes of this exercise, please tell us (yes, we know about Amazon AWS, Google Cloud and Azure already... ).

Submit the Dockerfile, a brief description of what you did, and a link to the running app.

Steps I took:

- [added the Dockerfile and .dockerignore](https://github.com/tomjtoth/verenluovutus-sovellus/commit/72adb71c10b75aeb43a72b6e4d2288769550ddae) for my previous project
- built and pushed the image as `tomjtoth/veripalvelu`, 
- cleaned up with `docker system prune -a` (with no running containers)
- ran `docker run -it -p 55599:55599 --name veripalvelu tomjtoth/veripalvelu`
    - which by the logic of the app stops at the below point:

```sh
2024-03-09 13:31:06.238 UTC [7] LOG:  listening on IPv4 address "0.0.0.0", port 5432
2024-03-09 13:31:06.238 UTC [7] LOG:  listening on IPv6 address "::", port 5432
2024-03-09 13:31:06.240 UTC [7] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
2024-03-09 13:31:06.242 UTC [53] LOG:  database system was shut down at 2024-03-09 13:31:06 UTC
2024-03-09 13:31:06.245 UTC [7] LOG:  database system is ready to accept connections

        `./.env` was missing, generated from presets
        review it and restart the program
$
```

- after a restart via `docker start veripalvelu && docker attach veripalvelu` http://localhost:55599 was reachable via firefox
- I went over to my free Oracle VPS and 
    - disabled the pre-docker version, 
        - which was based on user-level systemd timers and services for pulling new commits made to the `prod` branch, now I'll omit that functionality for now
    - tried `docker run -it -p 55599:55599 --name veripalvelu tomjtoth/veripalvelu` 
        - failed due to amd64 vs arm64 architecture difference
    - cloned the git repo and built the image on the server
    - pushed the resulting image as `tomjtoth/veripalvelu:aarch64`
    - TLS was previously deployed
    - the final command was  `docker run -it -p 55599:55599 -e PORT=55599 -e HOST=0.0.0.0 -e TLS_CERT=/fullchain.pem -e TLS_KEY=/privkey.pem -v /etc/letsencrypt/live/oracle.ttj.hu/fullchain.pem:/fullchain.pem -v /etc/letsencrypt/live/oracle.ttj.hu/privkey.pem:/privkey.pem --name veripalvelu --restart always --stop-timeout 3600 tomjtoth/veripalvelu:aarch64`
        - the `--stop-timeout 3600` is a precaution as the project is still using the development server which seems to have issues sometimes with TLS
- the dockerized version should be available [here](https://apps.ttj.hu/veripalvelu)
    - I dare you to login with a wrong `user:pass` :)
