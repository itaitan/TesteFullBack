const express = require('express')
const routes = require('./routes')
const cors = require('cors')
const corsOption = {
    origin: false,
}

const app = express()
app.use(cors(corsOption))
const port = 3000
routes(app)

app.listen(port, () => console.log(`servidor esta rodando na porta ${port}`))

module.exports = app