FROM node:9

WORKDIR /app

COPY . .


RUN npm install



USER node
EXPOSE 3000

CMD ["npm", "run", "start:dev"]
