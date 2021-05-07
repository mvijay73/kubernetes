FROM node:10
RUN ls -la
RUN cd hellojs
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD node app.js
EXPOSE 3000
