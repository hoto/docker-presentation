const Express = require('express')
const app = Express()

const MongoClient = require('mongodb').MongoClient

let db;
MongoClient
  .connect('mongodb://mongo:27017', (err, database) => {
    if (err) return console.log('Not connected to mongo yet...', err)
    console.log('Connected to mongo!')
    db = database
  })

app
  .get('/', (req, res) => res.json(
    {
      msg: 'Hello from nodejs app!',
      isDbConnected: !!db
    }
  ))
  .listen(8080, console.log('Listening on localhost:8080'))

