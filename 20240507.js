const express = require('./node_modules/express/lib/express')

const app = express()

app.use(express.static('./'))

app.get('/',(req,res)=>{

    res.send('request')

})

app.use((req,res) => {
    res.status(400).send("404 Error")
})

app.get('/login',(req,res) => {
    console.log(req.query)
    res.send("successasd")
})

app.post('/user',(req,res) => {
    res.send(
        {
            username:'zs',
            age:18,
            address:"ChangSha"
        }
    )
})

app.listen(3000,() => {
    console.log("Post: 3000")
})
