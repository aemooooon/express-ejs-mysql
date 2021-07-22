const express = require('express');
const router = require('./router.js')
const app = express();

// set template engine
app.set('view engine','ejs');
// load static res
app.use(express.static('public'))
// use router
app.use(router)

// listening
app.listen(8000, (req, res) => {
    console.log('visit: http://localhost:8000')
})