FROM nodered/node-red:3.1
# Copiar el package.json
COPY package.json /data/package.json

#Instalar nodos adicionales
RUN cd /data && npm install --production

EXPOSE 1880
