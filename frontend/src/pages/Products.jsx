import Header from '../components/Header'
import Slideshow from '../components/SlideShow'
import NavBar from '../components/NavBar'
import Footer from '../components/Footer'
// import Search from '../components/Search'
import ProductsOverview from '../components/ProductsOverview'
import { useParams } from 'react-router-dom';

export default function Home() {
    const { category_product } = useParams();
    console.log({category_product})
  return (
    <div>
        <Header/>
        <NavBar/>
        <Slideshow/>
        <ProductsOverview category_product = {category_product}/>
        <Footer/>
    </div>
  )
}
