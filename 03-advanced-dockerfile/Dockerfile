FROM node:6.9.2

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

EXPOSE 80
CMD npm start
