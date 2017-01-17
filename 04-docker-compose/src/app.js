const Express = require('express')
const app = Express()

app
  .get('/', (req, res) => res.json({msg: 'Hello from nodejs app!'}))
  .listen(8080, console.log('Listening on localhost:8080'))
