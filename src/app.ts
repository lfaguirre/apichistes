import axios from "axios";
import express from "express";
import chisteRoute from './routes/chistes';
import mateRoute from './routes/mate';

const app = express();
app.use(express.json());
app.use('/chistes',chisteRoute);
app.use('/mate',mateRoute);

export default app;