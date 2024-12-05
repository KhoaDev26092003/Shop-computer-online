import ProductDetail from "./components/ProductDetail";
import Home from "./pages/Home";
import ProductsOverview from "./components/ProductsOverview";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

export default function App() {
  return (
    <Router>
      <div>
        <Routes>
          <Route path="/home" element={<Home />} />
          <Route path="/product-detail/:slug_url" element={<ProductDetail />} />
          <Route path="/products/category/:category_product" element={<ProductsOverview />} />
        </Routes>
      </div>
    </Router>
  );
}