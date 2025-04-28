# Используем официальный Node.js образ как базовый
FROM node:16

# Указываем рабочую директорию в контейнере
WORKDIR /app

# Копируем package.json и package-lock.json в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь проект в контейнер
COPY . .

# Открываем порт для приложения
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "start"]
