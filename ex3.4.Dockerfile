FROM docker

WORKDIR /usr/src/app/

COPY ex3.3.sh /usr/local/bin/

# not gonna dumb my *fancy ass* bash script down to sh...
RUN apk add --no-cache bash

ENTRYPOINT ["ex3.3.sh"]
