FROM node:16.17.1-alpine

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/

EXPOSE 3000

CMD ["npm", "start"]