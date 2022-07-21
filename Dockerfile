FROM node:10
WOrkdir /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "index.js"]
