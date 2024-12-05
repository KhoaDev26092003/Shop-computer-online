import express from 'express';
import * as productController from '../controllers/products.js';

const productRoutes = express.Router();


productRoutes.get('/:slug_url', productController.getProductBySlugURL);
productRoutes.get('/', productController.getAllProducts);
productRoutes.post('/', productController.createProduct);
productRoutes.put('/', productController.updateProduct);
productRoutes.delete('/:id', productController.deleteProduct);
productRoutes.get('/category/:category', productController.getListProductByCategory);

export default productRoutes;
