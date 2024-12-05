import * as productImageService from '../services/product-images.js';

//  Lấy danh sách ảnh của 1 sản phẩm
 const getImagesDetail = async (req, res, next) => {
    try {
        
        const listImageProduct = await productImageService.getImagesDetail(req);
        res.json(listImageProduct);
    } catch (error) {
        next(error);
    }
};
// Lấy danh sách ảnh bìa của từng sản phẩm
 const getImageTitle = async (req, res, next) => {
    try {
        const imageTitle = await productImageService.getImageTitle(req);
        res.json(imageTitle);   
    } catch (error) {
        next(error);
    }
};


 const createImage = async (req, res, next) => {
    try {
        const image = await productImageService.createImage(req);
        res.status(201).json(image);
    } catch (error) {
        next(error);
    }
};

 const updateImage = async (req, res, next) => {
    try {
        const image = await productImageService.updateImage(req);
        res.json(image);
    } catch (error) {
        next(error);
    }
};

 const deleteImage = async (req, res, next) => {
    try {
        const image = await productImageService.deleteImage(req);
        res.json(image);
    } catch (error) {
        next(error);
    }
};

export {
    getImagesDetail,
    getImageTitle,
    createImage,
    updateImage,
    deleteImage
};