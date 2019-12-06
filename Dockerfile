FROM node:lts-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY package.json package-lock.json /app/
RUN npm ci

COPY . .

CMD npm run start:prod
