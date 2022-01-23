FROM node:15
WORKDIR /app
COPY package.json ./

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
          then yarn; \
          else yarn install --production; \
          fi;

COPY ./ ./
EXPOSE $HOST_PORT
CMD ["node", "app.js"]
# 입력한 CMD는 docker-compose에 입력한 command를 우선으로 동작합니다