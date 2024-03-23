FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v && npm install && REACT_APP_BACKEND_URL="http://localhost/api" npm run build && npm install -g serve && useradd -m someuser && rm -rf /var/lib/apt/lists/*

USER someuser

CMD ["serve", "-s", "-l", "5000", "build"]
