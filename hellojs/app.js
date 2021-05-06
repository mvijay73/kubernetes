const express = require("express");
const http = require("http");

const app = express();

const server = http.createServer(app);

app.get('/api', function(req,res){
        res.send("Welcome to API version 1.0");
});

server.listen(3000, function(){
        console.log("Server is listening on port: 3000");
});
