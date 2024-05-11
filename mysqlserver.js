const express = require('express')
const mysql = require('mysql')
const app = express()
const post = 3001
const db = mysql.createPool(
    {
        host:'localhost',
        port:3306,
        user:'root',
        password:'123456',
        database:'testbase'
    }
)

app.use(express.static('./'))

app.get('/find',(req,res)=> {

    let sqlCommand = "SELECT * FROM t_goods;"

    db.query(sqlCommand, [], (err, result) => {
        if (err) {
            res.status(500).send(`get a error! : ${err.message}`);
        } else {
            res.send(result);
        }
    });

})

app.get('/delete',(req,res)=> {

    let needDeleteId = 1
    let sqlCommand = `DELETE FROM t_goods WHERE ID = ${needDeleteId}`

    db.query(sqlCommand, [], (err, result) => {
        if (err) {
            res.status(500).send(`get a error! : ${err.message}`);
        } else {
            res.send(result);
        }
    });

})

app.get('/add',(req,res)=> {

    const id = 7
    const name = "千夏"
    const topic = "一朝花枝俏"
    const imagePath = "./images/06.jpeg"
    
    let sqlCommand =
    `INSERT INTO t_travel_destination(id,name,topic,imagePath) VALUES('${id}','${name}','${topic}','${imagePath}')`

    db.query(sqlCommand, [], (err, result) => {
        if (err) {
            res.status(500).send(`get a error! : ${err.message}`);
        } else {
            res.send(result);
        }
    });

})

app.get('/update',(req,res)=> {

    const newPassWord = "1145141919"
    const userID = "1"
    
    let sqlCommand =
    `UPDATE t_member SET password = '${newPassWord}' WHERE ID = ${userID}`

    db.query(sqlCommand, [], (err, result) => {
        if (err) {
            res.status(500).send(`get a error! : ${err.message}`);
        } else {
            res.send(result);
        }
    });

})



app.listen(post,()=>{
    console.log(`Post: ${post}`)
})