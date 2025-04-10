import express from 'express';
import axios from 'axios';

const router = express.Router();

interface Chiste {
  id: number;
  titulo: string;
}

let Chistes: Chiste[] = [];
let currentId = 1;

router.get("/:type", async (req, res) => {
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
  return res.status(500).send('Especifique el tipo chuck | dad ');
});

router.get("/", (req, res) => {
  // BASE DE DATOS Aleatorio select  * from Chistes order by rand() limit 1
});

router.post('/', (req, res) => {
  const { text } = req.body;

  return res.status(201).json('OK');
});

export default router;