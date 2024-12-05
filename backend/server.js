import express from 'express';
import dotenv from 'dotenv';
import productRoutes from './routes/products.js'
import productImagesRoutes from './routes/product-images.js';

dotenv.config();

const app = express();
const PORT = process.env.API_PORT || 5050;

// Middleware để parse JSON từ body request
app.use(express.json());

app.use('/products', productRoutes);
app.use('/product-images', productImagesRoutes);


app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
