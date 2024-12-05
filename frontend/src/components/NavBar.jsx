import { Link } from 'react-router-dom';

const NavBar = () => {
    return (
        <div>
            <div className='bg-black w-full py-4 text-white '>
                <div className="flex items-center space-x-4 w-3/5 mx-auto pt-1 justify-center"> 
                    <Link to="/products/category/vga" className="hover:underline px-6">
                        VGA - Card màn hình
                    </Link>
                    <Link to="/products/category/man-hinh" className="hover:underline px-6">
                        Màn hình
                    </Link>
                    <Link to="/products/category/laptop" className="hover:underline px-6">
                        Laptop
                    </Link>
                </div>
            </div>
      </div>
    );
  };

export default NavBar;
