FROM node:20-alpine

LABEL org.opencontainers.image.source https://github.com/devdiaryru/admin

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "preview"]