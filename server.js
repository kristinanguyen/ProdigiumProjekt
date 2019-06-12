const express = require('express');
const app = express();

app.use(express.static(__dirname + '/stylings'));

const session = require('express-session');
app.use(session({
    secret: 'example',
    resave: false,
    saveUninitialized: true
}));

app.engine('.ejs', require('ejs').__express);
app.set('view engine', 'ejs');

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));

const sqlite3 = require('sqlite3').verbose();
let database = new sqlite3.Database('users.db'); 

const bcrypt = require('bcrypt');
const saltRounds = 8;

app.listen(4000, () => {
    console.log("Server is listening on 4000");

    database.each(`SELECT * FROM users`, (error, row) => {
        console.log(row);
    });
});
app.get("/favoriten", function(req, res){
    const sql = `SELECT * FROM favoriten`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("favoriten", {"fav": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        })
    }
});
});
app.get("/konto", function(req, res){
    const sql = `SELECT * FROM users`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("konto", {"player": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        });
    }
});
});
app.get("/natur", function(req, res){
    const sql = `SELECT * FROM naturgeister`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("natur", {"natur": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        });
    }
});
});
app.get("/daemonen", function(req, res){
    const sql = `SELECT * FROM daemonen`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("daemonen", {"dm": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        });
    }
});
});
app.get("/Wasserwesen", function(req, res){
    const sql = `SELECT * FROM wasser`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("Wasserwesen", {"ws": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        });
	}
});
});
app.get("/Flugwesen", function(req, res){
    const sql = `SELECT * FROM flug`;
    let authenticated = req.session.authenticated;
    let username = req.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }
	database.all(sql, function(err, rows){
		if (err){
			console.log(err.message);
		}
		else {
            res.render("Flugwesen", {"flg": rows,   
            isLoggedIn: authenticated,
            greeting: greeting
        });
	}
});
});
app.get('/home', (request, response) => {
    let authenticated = request.session.authenticated;
    let username = request.session.username;

    let greeting;
    if (!authenticated) {
        greeting = "Willkommen!";
    }
    else {
        greeting = `Willkommen, ${username}!`;
    }

    response.render('home', {
        isLoggedIn: authenticated,
        greeting: greeting
    });
});

app.get('/login', (request, response) => {
    if (!request.session.authenticated) {
        response.render('login', {
            error: false
        });
    }
    else {
        response.redirect('/home');
    }
});

app.post('/login', (request, response) => {
    let username = request.body.username;
    let password = request.body.password;

    database.get(`SELECT * FROM users WHERE username='${username}'`, function(error, row) {
        if (error) {
            console.log(error);
            response.redirect('/login');
            return;
        }

        if (row != null) {
            bcrypt.compare(password, row.password, (error, result) => {
                if (error) {
                    console.log(error);
                    response.redirect('/login');
                    return;
                }

                if (result == true) {
                    request.session.authenticated = true;
                    request.session.username = row.username;
                    response.redirect('/home');
                }
                else {
                    response.render('login', {
                        error: true
                    });
                }
            });
        } 
        else {
            response.render('login', {
                error: true
            });
        }
    });
});

app.post('/logout', (request, response) => {
    request.session.destroy();
    response.redirect('/home');
});

app.get('/register', (request, response) => {
    if (!request.session.authenticated) {
        response.render('register', {
            error: null
        });
    }
    else {
        response.redirect('/home');
    }
});

app.post('/register', (request, response) => {
    let name = request.body.name;
    let username = request.body.username;
    let email = request.body.email;
    let password = request.body.password;
    let passwordConfirm = request.body.passwordConfirm;

    if (password != passwordConfirm) {
        response.render('register', {
            error: "Passwörter müssen übereinstimmen!"
        });
        return;
    }

    database.get(`SELECT * FROM users WHERE name='${name}'`, function(error, row) {
        if (error) {
            console.log(error);
            response.redirect('/register');
            return;
        }

    database.get(`SELECT * FROM users WHERE username='${username}'`, function(error, row) {
        if (error) {
            console.log(error);
            response.redirect('/register');
            return;
        }

    database.get(`SELECT * FROM users WHERE email='${email}'`, function(error, row) {
        if (error) {
            console.log(error);
            response.redirect('/register');
            return;
        }
        if (row == null) {
            bcrypt.hash(password, saltRounds, (error, hash) => {
                if (error) {
                    console.log(error);
                    response.redirect('/register');
                    return;
                }
                
                database.run(`INSERT INTO users (name, username, email, password) VALUES ('${name}', '${username}', '${email}', '${hash}')`, (error) => {
                    if (error) {
                        console.log(error);
                        response.redirect('/register');
                        return;
                    }
                });
                console.log(`User '${username} registered`);
                request.session.authenticated = true;
                request.session.username = username;
                response.redirect('/home');
            });
        } else {
            response.render('register', {
                error: "Benutzername bereits vorhanden."
            });
        }
    });
});
});
});

