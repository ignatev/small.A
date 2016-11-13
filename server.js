'use strict';

var promise = require('bluebird');
var pgp = require('pg-promise')();
var koa = require('koa');
var app = koa();

var connection = {
    host: 'db',
    port: 5432,
    database: 'smalla',
    user: 'postgres',
    password: 'postgres'
}

var db = pgp(connection);

var lists = db.any("select * from smalla.public.lists", [true])
    .then(function (data) {
        console.log("DATA:", data)
    })
    .catch(function (error) {
        console.log("ERROR:", error)
    });
    


app.use(function * () {
    
});

app.listen(8000);