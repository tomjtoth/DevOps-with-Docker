The Express-app repo is [here](https://github.com/tomjtoth/DevOps-with-Docker-Express-app)

After the initial push I set up secrets, restarted the GHA and ran `docker run -itp 8080:8080 tomjtoth/devops-with-docker-express-app:latest` locally in a terminal, hit `ctrl+Z` and `bg`, opened up http://localhost:8080 and saw **Hello World!**

I did not integrate watchtower as I aim to keep it separate and running only 1x for my other personal projects, `restart: unless-stopped` is a must.

```yaml
version: "3.8"

services:
  watchtower:
    image: containrrr/watchtower
    environment:
      -  WATCHTOWER_POLL_INTERVAL=60 # Poll every 60 seconds
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    container_name: watchtower
    restart: unless-stopped
```
