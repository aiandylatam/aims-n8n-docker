FROM n8nio/n8n:latest

USER root

RUN mkdir -p /opt/custom_node_modules && chmod 777 /opt/custom_node_modules

WORKDIR /opt/custom_node_modules

RUN npm init -y && npm install jimp --no-save

USER node

WORKDIR /data
