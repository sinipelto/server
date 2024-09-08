FROM node:20

ARG PUID
ARG PGID

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

COPY src ./src
COPY tsconfig.json ./
COPY .swcrc ./

RUN chown -R $PUID:$PGID .

USER $PUID

RUN npm ci

RUN npm run build

#RUN chown -R $PUID:$PGID dist

EXPOSE 43591
EXPOSE 43592
EXPOSE 43594

CMD [ "npm", "run", "start:standalone" ]
