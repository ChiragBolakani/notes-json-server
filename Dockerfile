FROM node

WORKDIR /app

COPY . /app

RUN npm install -g json-server

ENTRYPOINT ["json-server", "--watch", "db.json", "--port", "8004"]