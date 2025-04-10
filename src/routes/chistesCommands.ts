import database from '../helpers/mariadb';

export const RandomDB = () =>{
  const query = `SELECT cuerpo from Chistes order by rand() limit 1`;
  return new Promise((resolve, reject) => {
    database.query(query, (error, result) => {
      if (error) {
        console.error(error);
        reject(error);
      } 
      if (result.lenght ===0){
        return {text:""}
      }
      console.log('result: ',result[0].cuerpo);

      resolve({text:result[0].cuerpo});
    });
  });
}

export const insertChisteDB = (chiste) =>{
  return new Promise((resolve, reject) => {
    
    // Obtener los campos
    const campos=Object.keys(chiste).join(", ")
    const tmpvalores = Object.values(chiste).map(value => {
      if (value === null || value === undefined) return "NULL"; 
      return typeof value === "string" ? `'${value}'` : value;
    });
    const valores= tmpvalores.join(", ")

    const query=`INSERT INTO Chistes(${campos}) VALUES (${valores})`;
    database.query(
      query,
      (error, result) => {
        if (error) {
          return reject(error)
        }
        return resolve(result)
      }
    )
  })
}
export const updateChisteDB = (id, chiste) =>{
  return new Promise((resolve, reject) => {
    
    const SETS=Object.entries(chiste).map(([key, value]) => `${key} = ${typeof value === "string" ? `'${value}'` : value}`).join(", ");
    const query=`UPDATE Chistes SET ${SETS} where id=${id}; SELECT id FROM Chistes where id=${id};`;
    database.query(
      query,
      (error, result) => {
        if (error) {
          return reject(error);
        }
        //console.log(result);
        //console.log(result[1].length);
        if (result[1].length !==1){
          //console.log("reject");
          return reject('NOEXISTE');
        }
        return resolve(result[0]);
      }
    )
  })
}
export const deleteChisteDB = (id) =>{
  return new Promise((resolve, reject) => {
    const query=`SELECT id FROM Chistes where id=${id}; DELETE FROM  Chistes WHERE id=${id};`;
    database.query(
      query,
      (error, result) => {
        if (error) {
          return reject(error)
        }
        //console.log(result);
        console.log(result[0].length);
        if (result[0].length !==1){
          console.log("reject");
          return reject('NOEXISTE');
        }
        return resolve(result[1])
      }
    )
  })
}