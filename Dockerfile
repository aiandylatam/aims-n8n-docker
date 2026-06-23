FROM n8nio/n8n:2.20.9

USER root

RUN mkdir -p /opt/custom_node_modules && chmod 777 /opt/custom_node_modules

WORKDIR /opt/custom_node_modules

RUN npm init -y && npm install jimp@0.22.12 --no-save

USER node

WORKDIR /data
