const express = require('express')
const app = express()
const mysql = require('mysql')
var cors = require('cors'); 
app.use(cors());

const db = mysql.createConnection({

    host: "localhost",
    port: "3306",
    user: "root",
    password: "",
    database: "tp_api",
    
  })

db.connect(function(err) {
    if (err) throw err;
    console.log("Connecté à la base de données MySQL!");
})


// Middleware
app.use(express.json())

app.get('/personnages', (req,res) => {
    db.query("SELECT * from personnages", (err,result) => {
        if (err) 
            throw err
        res.status(200).json(result)
    }) 
})

app.get('/personnages/:id', (req,res) => {
    const id = parseInt(req.params.id)
    db.query("SELECT * from personnages where id = ?",id, (err,result) => {
        if (err) 
            throw err
        res.status(200).json(result)
    }) 
})

app.post('/personnages', (req,res) => {
    db.query("INSERT into personnages (nom,race,description,technique) values (?)", [[req.body.nom, req.body.race, req.body.description, req.body.technique]], (err,result) => {
        if (err) 
            throw err
        res.status(200).json(result)
    }) 
})

app.put('/personnages/update/:id', (req,res) => {
    const id = parseInt(req.params.id)
    db.query("UPDATE personnages SET ? WHERE id = ?", [req.body, id], (err,result) => {
        if (err) 
            throw err
        res.status(200).json(result)
    }) 
})

app.delete('/personnages/delete/:id', (req,res) => {
    const id = parseInt(req.body.id)
    db.query("DELETE from personnages WHERE id = ?", [id], (err,result) => {
        if (err)
            throw err
        res.status(200).json(result)
    }) 
})

app.listen(8082, () => {
    console.log("Serveur à l'écoute")
})