import Header from '../components/Header'
import Slideshow from '../components/SlideShow'
import NavBar from '../components/NavBar'
import Footer from '../components/Footer'
// import Search from '../components/Search'
import ProductOverview from '../components/ProductsOverview'
export default function Home() {
  return (
    <div>
        <Header/>
        <NavBar/>
        <Slideshow/>
        <ProductOverview category_product = "VGA"/>
        <ProductOverview category_product = "Laptop"/>
        <ProductOverview category_product = "Màn hình"/>
        <Footer/>
    </div>
  )
}
