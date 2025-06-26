FROM nodered/node-red:3.1.7-minimal
USER root

# Instala dependencias necesarias
RUN apk add --no-cache \
build-base \
python3 \
python3-dev \
gcc \
g++ \
make \
linux-headers \
bash

USER node-red

RUN mkdir -p /data
WORKDIR /data
 
RUN npm install --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table
