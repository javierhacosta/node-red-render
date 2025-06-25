FROM nodered/node-red:3.1.7
USER root

# Instala dependencias necesarias
RUN apt-get update && \
apt-get install -y build-essential python3 && \
rm rf /var/lib/apt/lists/*

USER node-red
 
# Instala los nodos adicionales del dashboard y base de datos
RUN npm install --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table
