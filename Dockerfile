FROM node:10.24.1

WORKDIR /app

COPY ./WebApp .

RUN npm config set registry https://registry.npm.taobao.org

RUN npm install -g typescript

RUN npm install -g ts-node

RUN npm install

EXPOSE 9981

CMD [ "ts-node", "./src/index.ts", "-w"]