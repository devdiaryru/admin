# Dockerfile
FROM node:20-alpine AS build

# Установим рабочую директорию
WORKDIR /app

# Скопируем файлы зависимостей
COPY package*.json ./

# Установим зависимости
RUN npm install

# Скопируем все остальные файлы
COPY . .

# Соберем приложение
RUN npm run build

# Используем Nginx для обслуживания статических файлов
FROM nginx:alpine

# Копируем собранное приложение в Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Копируем конфигурацию Nginx
COPY nginx-admin.conf /etc/nginx/conf.d/admin.conf

# Открываем порт 80
EXPOSE 80

# Команда для запуска Nginx
CMD ["nginx", "-g", "daemon off;"]
