FROM node:16.17.1-alpine AS builder

WORKDIR /app/front

COPY package.json .
COPY package-lock.json .

RUN npm install
RUN npm run build

COPY . .

CMD ["npm", "start"]
