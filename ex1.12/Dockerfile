FROM node:16

WORKDIR /usr/src/app/

COPY . .

# this is added in ex1.14
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
