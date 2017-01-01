const Express = require('express')

const app = Express()
const PORT = 80

app
  .get('/', (request, response) => {
    const message = {
      msg: 'hello from 03-advanced-dockerfile',
      date: new Date()
    }
    response.json(message)
  })
  .listen(PORT, console.log(`Running locally on localhost:${PORT} and on your host on localhost:8080`))
