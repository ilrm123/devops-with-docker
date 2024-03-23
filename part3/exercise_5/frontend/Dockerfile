FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v

RUN npm install

RUN REACT_APP_BACKEND_URL="http://localhost/api" npm run build

RUN npm install -g serve

RUN useradd -m someuser

USER someuser

CMD ["serve", "-s", "-l", "5000", "build"]
