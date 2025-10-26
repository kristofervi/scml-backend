import express from 'express'
import dotenv from 'dotenv'
import { Client } from 'pg'
import cors from 'cors'

dotenv.config()

const client = new Client({
  connectionString: process.env.PGURI,
  ssl: { rejectUnauthorized: false }
})

client.connect()

const app = express(),
  port = process.env.PORT || 3000

app.use(cors())

app.get('/players', (_req, res) => {
  client.query('SELECT * FROM players')
    .then(result => res.json(result.rows))
    .catch(err => {
      console.error(err)
      res.status(500).send('Fel vid hämtning av spelare')
    })
})

app.listen(port, () => {
  console.log(`Redo på http://localhost:${port}/`)
})
