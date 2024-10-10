FROM node:20-alpine

LABEL org.opencontainers.image.source https://github.com/devdiaryru/admin

ENV APP_ROOT /usr/src/app
WORKDIR ${APP_ROOT}

COPY ./package.json ./package-lock.json ./

RUN npm install

COPY . .

ADD ./ ${APP_ROOT}
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "preview"]