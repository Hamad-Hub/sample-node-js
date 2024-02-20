FROM node:9

WORKDIR /app

COPY . .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
