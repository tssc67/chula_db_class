const cfg = require('config');
const express = require('express');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const session = require('express-session');
const FileStore = require('session-file-store')(session);
const RedisStore = require('connect-redis')(session);
global.db = require('./db/db.js');
var app = express();
app.use(require('compression')({
	threshold: cfg.get("web.compression.threshold")
}));

app.use(session({
    store: new RedisStore({
		host:'127.0.0.1',
	}),
    secret: 'kofuku cat meow meow ~ ;)',
	saveUninitialized: false,
	resave: false
}));

app.use(bodyParser.json({limit: '1mb'}));
app.use(bodyParser.urlencoded({ extended: true , limit:'1mb'}));

app.set('view engine', 'ejs');
app.set('views', process.cwd() + '/views');

//Public assets
app.use(express.static(process.cwd() + '/static'));

//Login page
app.use(require('./authentication.js'));

//Web logic
app.use('/page',require('./page.js'));
app.use((req,res)=>res.render('index',{type:req.session.type}));

app.listen(cfg.get("web.port"));