INSERT INTO account (username, password , role)
VALUES 
('GuestAccount', '123567', 'guest'),
('adminAccount', '123567', 'guest'),
('userAccount', '123567', 'guest')

INSERT INTO products (name, brandname , price , category , quantity)
VALUES 
-- VGA 
-- ('Card màn hình Asus PROART RTX 4070 Ti SUPER-O16G' , 'Asus' , 29199000 , 'VGA' , 20),
-- ('Card màn hình MSI RTX 4070 SUPER 12G VENTUS 3X OC' , 'MSI' , 18999000 , 'VGA' , 20),
-- ('Card màn hình MSI RTX 4070 VENTUS 2X E 12G OC' , 'MSI' , 16399000 , 'VGA' , 20),
-- ('Card màn hình Gigabyte RTX 4070 Ti SUPER AERO OC-16G' , 'Gigabyte' , 27999000 , 'VGA' , 20),
-- ('Card màn hình Gigabyte RTX 4070 Ti SUPER GAMING OC-16G' , 'Gigabyte' , 27399000 , 'VGA' , 20),
-- ('Card màn hình Asus ROG STRIX-RTX 4060 Ti-O8G-GAMING' , 'Asus' , 13999000 , 'VGA' , 20),
-- ('Card màn hình Asus PRIME-RTX 4060 Ti-O8G' , 'Asus' , 12199000 , 'VGA' , 20),
-- ('Card màn hình Gigabyte RTX 4060 GAMING OC-8GD' , 'Gigabyte' , 29199000 , 'VGA' , 20),

-- Màn hình
-- ('Màn hình Gaming LG 32GR93U-B (32 inch/UHD/IPS/144Hz/1ms)' , 'LG' , 15790000 , 'Màn hình' , 20),
-- ('Màn hình MSI G274QPF E2 (27 inch/WQHD/Rapid IPS/180Hz/1ms)' , 'MSI' , 5999000 , 'Màn hình' , 20),
-- ('Màn Hình Gaming SAMSUNG Odyssey OLED G8 G80SD LS32DG802SEXXV (32 inch - OLED - 4K - 240Hz - 0.03ms)' , 'SAMSUNG' , 25990000 , 'Màn hình' , 20),
-- ('Màn hình Gaming MSI MAG 255XFV 24.5 inch FHD VA 250Hz 0.5ms)' , 'MSI' , 3590000 , 'Màn hình' , 20),
-- ('Màn hình AOC 25G3ZM (24.5 inch/FHD/VA/240Hz/0.5ms)' , 'AOC' , 4290000 , 'Màn hình' , 20),
-- ('Màn hình Viewsonic VA2215-H (21.5 inch/FHD/VA/100Hz/1ms)' , 'Viewsonic' , 1649000 , 'Màn hình' , 20),
-- ('Màn hình gaming AOC 24G4E/74 (23.8Inch/ Full HD/ 0,5ms/ 180Hz/ 300 cd/m2/ IPS)' , 'AOC' , 3090000 , 'Màn hình' , 20),
-- ('Màn hình ViewSonic VX3418-2KPC 34 inch QHD 144Hz VA Cong' , 'ViewSonic' , 8890000 , 'Màn hình' , 20)

-- Laptop
('Laptop Asus ExpertBook B1400CBA-EB0641W (Core i5-1235U | 8GB | 512GB | Intel Iris Xe | 14.0-inch FHD | Win 11 | Đen)' , 'Asus' , 15490000 , 'Laptop' , 20),
('Laptop Asus TUF Gaming F15 FX507ZC4-HN074W (Intel Core i5-12500H | 8GB | 512GB | RTX 3050 4GB | 15.6 inch FHD 144Hz | Win 11 | Xám)' , 'Asus' , 19790000 , 'Laptop' , 20),
('Laptop ASUS VivoBook Pro 15 OLED K6502VU MA090W' , 'Asus' , 39990000 , 'Laptop' , 20),
('Laptop Asus Vivobook Pro 16 K6602ZC MX079W | CPU i5-12450H | RAM 16GB LPDDR4 | SSD 512GB PCle | VGA RTX 3050 4GB | 16.0 WQHD 2K 100% DCI-P3 & 120Hz | Win11.' , 'Asus' , 26490000 , 'Laptop' , 20),
('LAPTOP GAMING GIGABYTE AORUS 15 XE4 (i7-12700H, 16GB (2x8GB) DDR4-3200, 512GB Gen4 7K SSD, 15.6" QHD IPS 165Hz, NVIDIA GeForce RTX 3070Ti 8GB GDDR6, Win 11 Home, Black, 2Yrs, AORUS 15 XE4-73VNB14GH)' , 'Gigabyte' , 35990000 , 'Laptop' , 20),
('Laptop Gigabyte G5 KF E3VN313SH | CPU i5-12500H | RAM 16GB DDR4 | SSD 512GB PCle | VGA RTX 4060 8GB | 15.6 FHD IPS 144Hz | Win11' , 'Gigabyte' , 25800000 , 'Laptop' , 20)

INSERT INTO listimage (IDproduct, Description , URL)
VALUES 
------------------------ VGA 
-- (5, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/file_pts_chu___n_l____0005_geforce_rtx____4070_ti_super_aero_oc_16g_01_e2a4dd668275448d97bb5b7ec6889265_master.jpg'),
-- (5, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/file_pts_chu___n_l____0001_geforce_rtx____4070_ti_super_aero_oc_16g_05_42afe8191984485ba974126c08fbf04f_master.jpg'),
-- (5, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/file_pts_chu___n_l____0007_geforce_rtx____4070_ti_super_aero_oc_16g_07_be2b538848484f4eb3ea1dbfa5b8289c_master.jpg')

-- (6, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/79149_card_man_hinh_gigabyte_rtx_4070_ti_super_gaming_oc_16g__3__c4922f0e822b44d0aaa5c8f221099aa3_master.jpg'),
-- (6, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/81037_card_man_hinh_msi_rtx_4070_super_12g_ventus_3x_oc__5__4367ff843977468d9537883905ba0c1b_master.jpg'),
-- (6, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/81037_card_man_hinh_msi_rtx_4070_super_12g_ventus_3x_oc__1__2b4260b9836e433a88d9ddc1b8871ee1_master.jpg'),

-- (7, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/72802_73154_card_man_hinh_asus_rog_strix_rtx_4060_ti_o8g_gaming__4__9a1ad27de847412e988f30fdddf29992_master.jpg'),
-- (7, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/72802_73154_card_man_hinh_asus_rog_strix_rtx_4060_ti_o8g_gaming__2__72fac31d038d406ab92f66a7b4994728_master.jpg'),
-- (7, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/72802_73154_card_man_hinh_asus_rog_strix_rtx_4060_ti_o8g_gaming__6__6fa25befa2184faba10f319c299283ac_master.jpg'),

-- (8, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/85471_card_man_hinh_asus_prime_rtx_4060_ti_o8gx__2__624767484dc7431ba364e67f10f6a04f_master.jpg'),
-- (8, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/85471_card_man_hinh_asus_prime_rtx_4060_ti_o8gx__1__48b7db7bc9884eb4ab3f5273b6d791f9_master.jpg'),
-- (8, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/85471_card_man_hinh_asus_prime_rtx_4060_ti_o8gx__7__c356f09213e9412fab962c3cabf61abc_master.jpg'),

 (9, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/73422_card_man_hinh_gigabyte_rtx_4060_gaming_oc_8gd__10__dffc5976b6da4127a45abfe497530c79_master.jpg'),
-- (9, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/79056_card_man_hinh_gigabyte_rtx_4060_ti_gaming_oc_16gb__3__1915f82514e644e98758f10a6a298a4e_master.jpg'),
-- (9, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/79056_card_man_hinh_gigabyte_rtx_4060_ti_gaming_oc_16gb__2__7a171ba45b974bf391d551466d2c1b85_master.jpg')

------------------------ Man hinh

-- (10, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/76824_man_hinh_gaming_lg_32gr93u_b_850x850_2_9de96642edbc437ca00496ba67abc1f7_master.jpg'),
-- (10, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/76824_man_hinh_gaming_lg_32gr93u_b_850x850_7_a1d2024cfd774b5e8d5791902b38a667_master.jpg'),
-- (10, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/76824_man_hinh_gaming_lg_32gr93u_b_850x850_5_7244fea6998c4ef6ad783fc68df9b469_master.jpg'),

-- (11, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/79194_man_hinh_msi_g274qpf_e2_new_1c4cd3afc5b04de7995d80425ec873be_master.jpg'),
-- (11, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/79194_man_hinh_msi_g274qpf_850x850_1_382d4ace7f104148924f686b9728ff45_master.jpg'),
-- (11, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/79194_man_hinh_msi_g274qpf_850x850_5_78aacd625e0f41b19d774663e70c96ca_master.jpg'),

-- (12, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/194_m__n_h__nh_gaming_samsung_odyssey_oled_g8_g80sd_ls32dg802sexxv__2__9e10e522c8344aee82c567c201f9cf60_master.jpg'),
-- (12, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/194_m__n_h__nh_gaming_samsung_odyssey_oled_g8_g80sd_ls32dg802sexxv__5__cfada83c5b1e44179ca64f6168ddfdd0_master.jpg'),
-- (12, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/194_m__n_h__nh_gaming_samsung_odyssey_oled_g8_g80sd_ls32dg802sexxv__3__9a2b98fc21e04ed6986620e3aafb7bbf_master.jpg'),

-- (13, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/6218-mag-255xfv-1_e36413a5bb8544c8a2fbe5f8959e0cdb_master.jpg'),
-- (13, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/6218-mag-255xfv-4_7f3dd88c56274035878bca034ba01f34_master.jpg'),
-- (13, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/6218-mag-255xfv-2_15dadba81a724a31936334aa0416cdf7_master.jpg'),

-- (14, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/86017_man_hinh_aoc_25g3zm_4_c50b469b7b754e918b9c5e0ac9678625_master.jpg'),
-- (14, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/86017_man_hinh_aoc_25g3zm_6_472e45917e4148a1a6565f2dcb1b9fe7_master.jpg'),
-- (14, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/86017_man_hinh_aoc_25g3zm_1_0ed3505e096a4a32a2e7be0f55303b5b_master.jpg'),


-- (15, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/77098_man_hinh_viewsonic_va2215_100hz_2_22f14f8b8b434137aa63d425dbbe3a32_master.png'),
-- (15, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/77098_man_hinh_viewsonic_va2215_100hz_3_df540f2968df45479ee260f972fe6941_master.png'),
-- (15, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/77098_man_hinh_viewsonic_va2215_100hz_4_74e9b4a957bb43949baacf5e00f43237_master.png'),


-- (16, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/56107_man_hinh_gaming_aoc_24g4e_74_6_538ad582544945619c90eeaac702c166_master.jpg'),
-- (16, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/56107_man_hinh_gaming_aoc_24g4e_74_5_f95356c06ac74e0c88ff922fd38ddfb4_master.jpg'),
-- (16, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/56107_man_hinh_gaming_aoc_24g4e_74_2_23cd0e5286c24c24a4a92fa79103082e_master.jpg'),


-- (17, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/39010_m__n_h__nh_viewsonic_vx3418_2kpc_34_inch_qhd_144hz_va_cong_bcb2ead6159b4ca3aa010bd2cc4f31df_master.jpg'),
-- (17, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/resizer_521dc4b463fb484bba71f191ab09e5b5.jfif'),
-- (17, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/resizer__2__25e7e7d2ef9d4bad91627263b728f333.jfif')

---------------- Laptop
(18, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/71394_expertbook_b1400cba_14_89949330564f4c5e85b5ce235a8bc98b_master.png'),
(18, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/71394_expertbook_b1400cba_13_9617181930994371b2797333c06c0ff7_master.png'),
(18, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/71394_expertbook_b1400cba_10_e103be7a870a40aa9cc52bf1332f6849_master.png'),

(19, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/45807_1_96714015794b48e6bab60591b24f1f39_master.jpg'),
(19, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/45807_laptop_asus_tuf_gaming_f15_fx507zc4_hn074w__2__90226b84146b40bfa6bb3a9122071a6c_master.jpg'),
(19, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/45807_laptop_asus_tuf_gaming_f15_fx507zc4_hn074w__5__40e14a537a4245949c8e7b027fb515bb_master.jpg'),


(20, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/12237_k6502vu_ma090w_thumbnail_1c535899d3594a5caed1118a18fdfd19_master.jpg'),
(20, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/12237_asus_vivobook_pro_15_oled_k6502___b___c__5_c601160d087c4b9792175d151d9ecc5f_master.jpg'),
(20, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/12237_asus_vivobook_pro_15_oled_k6502___b___c__4_cfaa62a84de644c98d835ae522a350f6_master.jpg'),


(21, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/44252_1_42aec68e30954cc786386802ad025ae0_master.jpg'),
(21, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/44252_079w_58e2a424d6094b2da715f921a66d78df_master.jpg'),
(21, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/44252_laptop_asus_vivobook_pro_16_k6602zc_mx079w__5__d394961e3735400e9ec25afe7cd31dad_master.jpg'),


(22, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/fileuploadglobalwebpage914img1_7bff1bf1a9114cda8a1f105747560b58_master.png'),
(22, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/fileuploadglobalwebpage914img2_0efbdc64e45f497ab1eebd1e8d0a7559_master.png'),
(22, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/fileuploadglobalwebpage914img3_4876454795bf4e7ea14400fc232e80a1_master.png'),


(23, 'ProductTitle' ,'https://product.hstatic.net/200000680123/product/g5__2023_-06_e75965aaa4db4fb7ad1dd1f91cf060fb_master.png'),
(23, 'ProductDetail' , 'https://product.hstatic.net/200000680123/product/g5__2023_-08_d002a52de1f24c73ac23e985ac2549e4_master.png'),
(23, 'ProductDetail' ,'https://product.hstatic.net/200000680123/product/g5__2023_-07_1f1c711d102f492298c2d1e0eea4ca23_master.png')


SELECT * FROM ListImage WHERE description = 'ProductTitle'
SELECT * FROM PRODUCTS  


