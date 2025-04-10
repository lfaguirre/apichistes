import express from 'express';
import axios from 'axios';
import {RandomDB, insertChisteDB, updateChisteDB, deleteChisteDB } from './chistesCommands';
const router = express.Router();

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

router.get("/", async (req, res) => {
  try {
    const result = await RandomDB(); 
    return res.status(200).send(result);
  } catch (error) {
    console.error("Error:", error);
    return res.status(500).send("No se pudo devolver ningún chiste");
  }  
});

router.post('/:text', async (req, res) => {    
  // guardará en una base de datos el chiste (texto pasado por parámetro)
  const { text } =  req.params;
  if (text!==''){
    const chiste ={
      titulo: text,
      cuerpo: text
    }
    try {
      const result = await insertChisteDB(chiste);
      return res.status(200).send("Chiste insertado");
    } catch (error) {
      console.error("Error:", error);
      return res.status(500).send("No se pudo guardar el chiste");
    }  
    
  } else {
    return res.status(400).send("El texto no puede estar vacio");
  }
});
router.patch('/:number', async (req, res) => {    
  const { number } =  req.params;
  //console.log('body',req.body);
  const text = req.body.text; 
  if (text!==''){
    const chiste ={
      titulo: text,
      cuerpo: text
    }
    try {
      const result = await updateChisteDB(number,chiste);
      return res.status(204).send();
    } catch (error) {
      //console.error("Error:", error);
      if (error==='NOEXISTE') {
        return res.status(500).send("No existe el chiste");  
      }
      return res.status(500).send("No se pudo actualizar el chiste");
    }  
    
  } else {
    return res.status(400).send("El texto no puede estar vacio");
  }

});

router.delete('/:number', async (req, res) => {    
  // elimina el chiste indicado en el parámetro number.
  const { number } =  req.params;
  try {
    const result = await deleteChisteDB(number);
    return res.status(204).send();
  } catch (error) {
    //console.error("Error:", error);
    if (error==='NOEXISTE') {
      return res.status(500).send("No existe el chiste");  
    }
    return res.status(500).send("No se pudo actualizar el chiste");
  }  
});
export default router;