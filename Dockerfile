FROM node:10-slim

USER node

RUN mkdir -p /home/node/app/dist

WORKDIR /home/node/app

COPY --chown=node ./package.json .

COPY --chown=node ./tsconfig.json .

RUN npm install

RUN npm audit fix

COPY ./.env .

COPY ./dist ./dist

COPY database.sqlite .

CMD ["npm", "run", "start:prod"]
