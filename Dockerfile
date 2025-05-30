FROM node:22-alpine

# dumb-init helps handling SIGTERM and SIGINT correctly
RUN apk add dumb-init

WORKDIR /usr/src/app

# copy package.json and package-lock.json separately to cache dependencies
COPY package*.json ./
RUN npm install

COPY --chown=node:node . .

RUN npm run build

RUN npm prune --omit=dev
ENV NODE_ENV production

EXPOSE 9080
USER node
CMD ["dumb-init", "node", "./dist/app.js"]
