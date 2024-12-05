import * as productService from '../services/products.js';

 const getAllProducts = async (req, res, next) => {
    try {
        const products = await productService.getAllProducts();
        res.json(products);
    } catch (error) {
        next(error);
    }
};

 const getProductBySlugURL = async (req, res, next) => {
    try {
        const product = await productService.getProductBySlugURL(req);
        res.json(product);   
    } catch (error) {
        next(error);
    }
};

const getListProductByCategory = async (req, res, next) => {
    try {
        const product = await productService.getListProductByCategory(req);
        res.json(product);   
    } catch (error) {
        next(error);
    }
};

 const createProduct = async (req, res, next) => {
    try {
        const product = await productService.createProduct(req);
        res.status(201).json(product);
    } catch (error) {
        next(error);
    }
};

 const updateProduct = async (req, res, next) => {
    try {
        const product = await productService.updateProduct(req);
        res.json(product);
    } catch (error) {
        next(error);
    }
};

 const deleteProduct = async (req, res, next) => {
    try {
        const product = await productService.deleteProduct(req);
        if (!product) {
            return res.status(404).json({ message: 'Product not found' });
        }
        res.json({ message: 'Product deleted successfully' });
    } catch (error) {
        next(error);
    }
};

export {
    getAllProducts,
    getProductBySlugURL,
    createProduct,
    updateProduct,
    deleteProduct,
    getListProductByCategory
};