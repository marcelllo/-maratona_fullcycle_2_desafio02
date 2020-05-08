FROM node:10-slim

USER node

RUN mkdir -p /home/node/app/dist

WORKDIR /home/node/app

COPY --chown=node ./package.json .

RUN npm install

COPY ./.env .

COPY ./dist ./dist

CMD ["npm", "run", "start:prod"]
