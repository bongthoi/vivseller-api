import express from 'express';
import bodyParser  from 'body-parser';

/** */
import  router from './src/routers/router';
import api_config from './config/api_config.json';

/** */
var app =express();


/**middleware */
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    next();
});


/** */
app.use("/",router);


/** */
var server  =app.listen(api_config.api_port,function(){console.log("Listening locally on port "+server.address().port);});