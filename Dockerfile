FROM nodered/node-red:3.1
# Instala los nodos adicionales del dashboard y base de datos
RUN npm install --unsafe-perm --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table
