import express from 'express';
import axios from 'axios';
import {mcmArray} from './mateCommands';
const router = express.Router();

router.get('/:numbers', (req, res) => {
  const {numbers}  = req.params;
  

  if (!numbers) return res.status(400).send('Parametro number necesario');

  const arrNumbers = numbers.split(',').map(Number);
  if (arrNumbers.some(isNaN)) {
    return res.status(400).json({ error: 'Los valores tienen que ser enteros' });
  }

  if (arrNumbers.length===1){
    const result = res.status(200).send(arrNumbers[0]+1);
    return result;
  } else{
    const result = mcmArray(arrNumbers);
    //console.log("result", result)
    return res.status(200).send(result);
  }
});


export default router;