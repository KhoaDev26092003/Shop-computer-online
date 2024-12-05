import database from '../database/dbconfig.js';

//  Lấy danh sách ảnh của 1 sản phẩm
const getImagesDetail = async (req, res) => {
  try {
    let {id} = req.params ;
    const result = await database.query(`SELECT * FROM ListImage WHERE IDproduct = ${id}`);
    return result.rows;
  } catch (error) {
    console.error(error);
    return { message: 'Lỗi lấy danh sách ListImage' };
  }
}; // xong


// Lấy ảnh bìa của 1 sản phẩm  
const getImageTitle= async (req, res) => {
  try {
    let {id} = req.params
    console.log(id)
    const result = await database.query(
      `SELECT * FROM ListImage 
      WHERE description = 'ProductTitle' AND IDproduct = ${id}`);
    if (result.rows.length === 0) {
      return { message: 'Ảnh bìa không tồn tại' };
    }
    return result.rows[0]
  } catch (error) {
    console.error(error);
    return { message: 'Lỗi lấy ảnh bìa' };
  }
}; // xong


// Create - Thêm ảnh 
const createImage = async (req, res) => {
  try {
    const { IDProduct, Description, URL } = req.body;
    if(IDProduct == null || Description == null || URL == null )
    {
      return { message: 'Vui lòng nhập đủ thông tin' };
    }
    const result = await database.query(`
      INSERT INTO ListImage (IDProduct, Description, URL) 
      VALUES (${IDProduct}, '${Description}', '${URL}') RETURNING *;
    `);
    return result.rows[0];
  } catch (error) {
    console.error(error);
    return { message: 'Thêm ảnh không thành công !' };
  }
}; // xong


// Update - Cập nhật ảnh
const updateImage = async (req, res) => {
  try {
    const { IDImage = null , Description = null , URL = null } = req.body;
    if(IDImage == null || Description == null || URL == null )
      {
        return { message: 'Vui lòng nhập đủ thông tin' };
      }
      await database.query(`
      UPDATE ListImage 
      SET Description = '${Description}' , URL = '${URL}'
      WHERE ID = ${IDImage} RETURNING *;
    `);
    return { message: 'Cập nhật ảnh thành công !' };
  } catch (error) {
    console.error(error);
    return { message: 'Cập nhật ảnh không thành công !' };
  }
}; // xong


// Delete - Xóa ảnh
const deleteImage = async (req, res) => {
  try {
    const { id } = req.params;
    await database.query(`DELETE FROM ListImage WHERE ID = ${id} RETURNING *`);
    return { message: 'Xoá ảnh thành công !' };
  } catch (error) {
    console.error(error);
    return { message: 'Xoá ảnh không thành công !' };
  }
}; // xong

export {
  createImage,
  getImagesDetail,
  getImageTitle,
  updateImage,
  deleteImage,
};
