FROM node:10
WORKDIR /app
RUN ls -la
RUN cd hellojs
COPY package.json /app
RUN npm install
COPY . /app
CMD node app.js
EXPOSE 3000
