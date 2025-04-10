import app from "./app";

const port = process.env.PORT || 6969;

app.listen(port, () => {
  console.log(`Servidor iniciado en puerto ${port}`);
});