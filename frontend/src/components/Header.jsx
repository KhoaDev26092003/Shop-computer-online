import { Link } from 'react-router-dom';


const Header = () => {
    return (
    <div>
      <div className='bg-[#3C3D37] w-full h-10'></div>
      <header className="bg-white text-white py-4 px-6 flex justify-between items-center w-4/5 mx-auto">
       {/* logo */}
       <Link to="/home" className="hover:underline">
       <img src="../src/assets/logo-brand.webp" alt="Brand Logo" className="h-16 mr-4" />
          </Link>
       
        {/* search */}
        <div className="flex items-center justify-center w-1/4 relative">
            <input
                type="text"
                placeholder="Search..."
                className="py-1 px-8 w-full rounded-md border-solid border-2 border-indigo-600 text-black"
            />
            <img
                src="../src/assets/search.png"
                alt="search_icon"
                className="h-[16px] absolute right-2 top-1/2 transform -translate-y-1/2"
            />
        </div>


        <div className="flex items-center space-x-4"> 
          <Link to="/account" className="hover:underline">
            <img className='h-[30px]' src="../src/assets/user.png" alt="account_icon" />
          </Link>
          <Link to="/cart" className="hover:underline">
            <img className='h-[30px]' src="../src/assets/shopping-cart.png" alt="cart_icon" />
          </Link>
        </div>
      </header>
      </div>
    );
  };

export default Header;
