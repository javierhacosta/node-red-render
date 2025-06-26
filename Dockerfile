FROM nodered/node-red:3.1.7

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    build-essential \
    g++ \
    make \
    gcc \
    && rm -rf /var/lib/apt/lists/*

USER node-red

RUN npm install --unsafe-perm \
    node-red-dashboard \
    node-red-node-mysql \
    node-red-contrib-ui-table