import express from 'express';
import * as productImagesController from '../controllers/product-images.js';

const productImagesRoutes = express.Router();

productImagesRoutes.get('/detail/:id', productImagesController.getImagesDetail);
productImagesRoutes.get('/title/:id', productImagesController.getImageTitle);
productImagesRoutes.post('/', productImagesController.createImage);
productImagesRoutes.put('/', productImagesController.updateImage);
productImagesRoutes.delete('/:id', productImagesController.deleteImage);
// productImagesRoutes.get('/category/:category', productImagesController.getListProductByCategory);

export default productImagesRoutes;
