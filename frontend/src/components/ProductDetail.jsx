
import  { useEffect, useState } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';
import Header from '../components/Header'
import NavBar from '../components/NavBar'
import Footer from '../components/Footer'

const ProductOverview = () => {
  const { slug_url } = useParams();
  const [product, setProducts] = useState([]);
  const [images , setImages] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedImage, setSelectedImage] = useState(
    "https://via.placeholder.com/500x300?text=Main+Image" 
  );

  useEffect(() => {
    const fetchProductsAndImages = async () => {
      try {
       
        const productResponse = await axios.get(`http://localhost:3000/products/${slug_url}`);
        setProducts(productResponse.data);
  
   
        const productId = productResponse.data.id;
        const imagesResponse = await axios.get(`http://localhost:3000/product-images/detail/${productId}`);
        setImages(imagesResponse.data);
        setSelectedImage(imagesResponse.data[0].url)
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };
  
    fetchProductsAndImages();
  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div>        
        <Header/>
        <NavBar/>
        <div className="container mx-auto p-6">
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Phần ảnh */}
        <div>
          {/* Ảnh lớn */}
          <img
            src={selectedImage}
            alt="Selected"
            className="w-auto rounded-lg shadow-md max-h-[500px]"
          />

          {/* Ảnh nhỏ */}
          <div className="flex space-x-4 mt-4">
            {images.map((image, index) => (
              <img
                key={index}
                src={image.url}
                alt={`Thumbnail ${index + 1}`}
                className={`w-24 h-24 object-cover cursor-pointer border-2 ${
                  selectedImage === image ? "border-blue-500" : "border-gray-200"
                } rounded-md`}
                onClick={() => setSelectedImage(image.url)}
              />
            ))}
          </div>
        </div>

        {/* Phần thông tin */}
        <div>
          <h1 className="text-2xl font-bold">
            {product.name}
          </h1>
          <p className="text-gray-600 mt-2">
            Thương hiệu: <span className="font-semibold">{product.brandname}</span>
          </p>
          <p className="text-gray-600 mt-2">
            Loại sản phẩm: <span className="font-semibold">{product.category}</span>
          </p>
          <p className="text-red-600 text-3xl font-bold mt-4">{product.price.toLocaleString()} VNĐ
          </p>
          <p className="text-gray-600 mt-2">
            Số lượng : <span className="font-semibold">{product.quantity}</span>
          </p>
          <p className="text-gray-600 mt-2">Bảo hành 36 tháng</p>


          {/* Chọn số lượng */}
          <div className="flex items-center mt-4">
            <button className="px-4 py-3 bg-gray-300 rounded-l">
              -
            </button>
            <input
              type="text"
              value="1"
              className="py-2 mx-1 w-10 text-center "
              readOnly
            />
            <button className="px-4 py-3 bg-gray-300 rounded-r">
              +
            </button>
          </div>

          {/* Các nút hành động */}
          <div className="flex space-x-4 mt-6">
            <button className="flex-1 bg-black text-white py-2 rounded-md">
              Thêm vào giỏ hàng
            </button>
            <button className="flex-1 bg-red-500 text-white py-2 rounded-md">
              Mua ngay
            </button>
          </div>
        </div>
      </div>
    </div>
        <Footer/>
    </div>
  );
};

export default ProductOverview;