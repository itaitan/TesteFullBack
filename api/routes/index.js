const bodyParse = require('body-parser')
const produtos = require('./produtosRoute')
const cors = require('cors')


module.exports = app =>{  
    app.use(cors())     
    app.use(bodyParse.json())    
    app.use(produtos)    
    
}