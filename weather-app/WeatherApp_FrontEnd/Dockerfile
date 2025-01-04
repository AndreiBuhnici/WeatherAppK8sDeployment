FROM node:16.20.0

WORKDIR /usr/src/app

COPY . .

RUN npm install --legacy-peer-deps

EXPOSE 4200

CMD ["npm", "start"]
