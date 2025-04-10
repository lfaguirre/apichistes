import axios from "axios";
import express from "express";
import chisteRoute from './routes/chistes';
const app = express();

app.use('/chistes',chisteRoute);
/*
app.get("/chistes/:type", async (req, res) => {
  const { type } = req.params;
  if (type.toLowerCase() === 'chuck') {
    try {
      const response = await axios.get('https://api.chucknorris.io/jokes/random');
      return res.status(200).send({ text: response.data.value });
    } catch (error){
      return res.status(500).send({ text: 'Error en https://api.chucknorris.io/jokes/random' });
    }
  }
  if (type.toLowerCase() === 'dad') {
    const response = await axios.get('https://icanhazdadjoke.com/', {
      headers: { Accept: 'application/json' }
    });
    return res.json({ text: response.data.joke });
  }
});

app.get("/chistes/", (req, res) => {
  return res.status(500).send('Especifique el tipo chuck | dad ');
});

app.post('/', (req, res) => {
  const { text } = req.body;

  return res.status(201).json('OK');
});
*/
export default app;