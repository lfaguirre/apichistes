import mysql, { Pool, PoolConnection } from 'mysql';

const connection: Pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'argoswuai',
  password: 'inn.Wua!',
  database: 'argos_sdp',
  multipleStatements: true
});

connection.getConnection((err: mysql.MysqlError | null, connect: PoolConnection) => {
  if (err) {
      console.error('Error conectando a BBDD',err);
  }
  if (connect) connect.release();
  // console.log('Connectado a BBDD')
  return;

});

export default connection;
