FROM node:14.17.3-alpine
WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .
EXPOSE 4200
CMD ng serve --host 0.0.0.0 --port 4200
