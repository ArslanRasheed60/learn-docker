const express = require('express')

const app = express();

app.get('/', (req, res)=>{
    res.send("Helolow")
})

app.listen(8000, ()=>{
    console.log("Listening to port 8000");
})