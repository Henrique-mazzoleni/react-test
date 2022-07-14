FROM node:lts-alpine
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY public ./public
COPY src ./src

CMD [ "npm", "test" ]