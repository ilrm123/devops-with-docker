FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v && npm install && REACT_APP_BACKEND_URL="http://localhost/api" npm run build && npm install -g serve && adduser -D someuser && rm -rf /var/lib/apt/lists/*

FROM node:16-alpine

COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build/
COPY --from=build-stage /etc/passwd /etc/passwd

WORKDIR /usr/src/app

RUN npm install --global serve

EXPOSE 5000

USER someuser

CMD ["serve", "-s", "-l", "5000", "build"]
