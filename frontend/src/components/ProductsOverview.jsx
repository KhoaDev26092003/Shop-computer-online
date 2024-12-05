
import  { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

// eslint-disable-next-line react/prop-types
const ProductOverview = ({category_product}) => {
  const [products, setProducts] = useState([]);
  const [images, setImages] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  
  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const response = await axios.get( `http://localhost:3000/products/category/${category_product}` );
        
        // const fetchedProducts = response.data.slice(0, 3); 

        setProducts(response.data); 

        // Concurrently fetch images for all products
        const imagePromises = products.map(async (product) => {
          try {
            const imageResponse = await axios.get(
              `http://localhost:3000/product-images/title/${product.id}` 
            );
            return imageResponse.data.url; 
          } catch (error) {
            console.error(`Error fetching image for product ${product.id}:`, error);
            return null; // Handle potential errors for individual images (optional)
          }
        });

        const fetchedImages = await Promise.all(imagePromises);
        setImages(fetchedImages);
        console.log(images)
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchProducts(products);


  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className="w-4/5 mx-auto mt-32">
      <h1 className="text-2xl font-bold mb-4">Danh sách sản phẩm {category_product}</h1>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {products.map((product,index) => (
          <div key={product.id} className="border p-4 rounded-lg shadow-md">
            <h2 className="text-lg font-semibold truncate">{product.name}</h2>
           
            <Link to={`/product-detail/${product.slug_url}`} className="cursor-pointer px-6">
            <img className="w-1/2 mx-auto" src={images[index]} alt="ImgProduct" />
            </Link>
            <p className="text-red-600 font-bold">Giá: {product.price.toLocaleString()} VNĐ</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ProductOverview;