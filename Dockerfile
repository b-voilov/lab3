FROM node:19.8.1-alpine3.16
WORKDIR /app
COPY ./package-lock.json .
COPY ./package.json .
RUN npm i
COPY ./src ./src
CMD ["npm","run","start"]