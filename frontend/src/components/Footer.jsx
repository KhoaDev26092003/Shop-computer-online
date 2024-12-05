const Footer = () => {
  return (
    <footer className="bg-blue-50 py-8 px-4 mt-28">
      <div className="container mx-auto grid grid-cols-2 md:grid-cols-5 gap-6 text-gray-700">
        {/* Thông tin liên hệ */}
        <div>
          <img
            src="../src/assets/logo-brand.webp"
            alt="Logo"
            className="w-32 mb-4"
          />
          <p>407/38 Sư Vạn Hạnh, Phường 12, Quận 10, TP.Hồ Chí Minh</p>
          <p className="mt-2">0787810101 - 0835627365</p>
          <p className="mt-2">titekhcm@gmail.com</p>
          <p className="mt-2">Thứ 2 - Chủ Nhật (9h - 18h30)</p>
          <img
            src="https://theme.hstatic.net/200000680123/1001286314/14/logo_bct.png?v=215"
            alt="Đã thông báo Bộ Công Thương"
            className="w-24 mt-4"
          />
        </div>

        {/* Hỗ trợ khách hàng */}
        <div>
          <h3 className="font-bold text-lg mb-3">Hỗ Trợ Khách Hàng</h3>
          <ul className="space-y-2">
            <li><a href="#" className="hover:text-blue-600">Tìm kiếm</a></li>
            <li><a href="#" className="hover:text-blue-600">Giới thiệu</a></li>
            <li><a href="#" className="hover:text-blue-600">Điều khoản dịch vụ</a></li>
            <li><a href="#" className="hover:text-blue-600">Liên hệ</a></li>
          </ul>
        </div>

        {/* Chính sách */}
        <div>
          <h3 className="font-bold text-lg mb-3">Chính Sách</h3>
          <ul className="space-y-2">
            <li><a href="#" className="hover:text-blue-600">Phương thức thanh toán / Đặt hàng</a></li>
            <li><a href="#" className="hover:text-blue-600">Phương thức giao hàng</a></li>
            <li><a href="#" className="hover:text-blue-600">Chính sách đổi trả</a></li>
            <li><a href="#" className="hover:text-blue-600">Chính sách trả góp</a></li>
            <li><a href="#" className="hover:text-blue-600">Quy định bảo hành</a></li>
            <li><a href="#" className="hover:text-blue-600">Chính sách bảo mật</a></li>
            <li><a href="#" className="hover:text-blue-600">Hướng dẫn mua hàng</a></li>
            <li><a href="#" className="hover:text-blue-600">Bảng giá thu cũ đổi mới</a></li>
          </ul>
        </div>

        {/* Thanh toán */}
        <div>
          <h3 className="font-bold text-lg mb-3">Thanh Toán</h3>
          <div className="flex flex-wrap items-center gap-2">
            <img src="https://theme.hstatic.net/200000680123/1001286314/14/listpayment_img_1.png?v=215" alt="Visa" className="h-8" />
            <img src="https://theme.hstatic.net/200000680123/1001286314/14/listpayment_img_2.png?v=215" alt="MasterCard" className="h-8" />
            <img src="https://theme.hstatic.net/200000680123/1001286314/14/listpayment_img_3.png?v=215" alt="JCB" className="h-8" />
            <img src="https://theme.hstatic.net/200000680123/1001286314/14/listpayment_img_4.png?v=215" alt="ATM" className="h-8" />
 
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
