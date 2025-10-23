import express from 'express'

const app = express(),
  // eslint-disable-next-line no-undef
  port = process.env.PORT || 3000

app.get('/', (_request, response) => {
  response.send({ hello: 'World' })
})

app.listen(port, () => {
  console.log(`Redo på http://localhost:${port}/`)
})
