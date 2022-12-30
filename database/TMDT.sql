create database TMDT
use TMDT

--
-- Cấu trúc bảng cho bảng `manufactures`
--
DROP TABLE IF EXISTS manufactures;
CREATE TABLE manufactures (
  menu_id int NOT NULL,
  menu_name varchar(100) NOT NULL,
  PRIMARY KEY(menu_id)
)

INSERT INTO manufactures (menu_id, menu_name) VALUES
(1, 'Apple'),
(2, 'Oppo'),
(3, 'Samsung'),
(4, 'Xiaomi'),
(5, 'Realme'),
(6, 'Dell'),
(7, 'Lenovo'),
(8, 'MSI');

select * from manufactures
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  pID int IDENTITY(1, 1) NOT NULL primary key,
  name nvarchar(100) NOT NULL,
  menu_id int NOT NULL,
  type_id int NOT NULL,
  price float NOT NULL,
  image nvarchar(255) NOT NULL,
  description nvarchar(500) NOT NULL,
  topsell int NOT NULL,
)
select * from products where pID = 1
delete products
--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO products (name, menu_id, type_id, price, image, description, topsell) VALUES
(N'Iphone 14pro max', 1, 1, 35000.00, N'https://cf.shopee.vn/file/sg-11134201-22100-0a1buwc7ryiv54_tn', N'Recently, the iPhone 14 Pro Max 256GB phone has also been officially revealed globally and smashed many rumors for a long time, inside the device will be equipped with a great performance chip and upgraded camera. from the Apple house.', 1),
(N'Iphone 13pro max', 1, 1, 25000.00, N'https://cf.shopee.vn/file/0982de1d517eed28495a9bbcaced5881_tn', N'128GB', 1),
(N'Iphone 11', 1, 1, 10000.00, N'https://cf.shopee.vn/file/7da18a76068736497cfa20de67cdd8ba_tn', N'Considered as one of the cheap iPhone versions of the iPhone 11 series, the 128GB iPhone 11 still possesses many advantages that few other smartphones possess.', 1),
(N'OPPO Reno8 Pro 5G', 2, 1, 18990.00, N'https://cf.shopee.vn/file/00738ad6f78e7f79a125f32eb21391a5_tn', N'OPPO Reno8 Pro 5G launched with a breakthrough in the camera section when it was the first device in the Reno series to integrate the MariSilicon X NPU, considered the most advanced NPU from OPPO (2022) capable of image processing. peak. Accompanied by a powerful chip from the MediaTek family, you can balance all current games.', 0),
(N'Laptop Apple MacBook Pro M2 2022', 1, 2, 32990.00, N'https://cf.shopee.vn/file/a5e087409cca78fb6bdd281da177ff88_tn', N'Elegant, luxurious design and outstanding performance from the advanced Apple M2 processor found in Macbook Pro M2, promises to bring a lot of value to creative users, serving well the needs of graphic design. Advanced.', 0),
(N'Tablet Samsung Galaxy Tab A7 Lite', 3, 3, 3990.00, N'https://lh3.googleusercontent.com/mL7rqStFFUt2yZXDt1nIQIpZoHtqWQlaKBUPrNuPcRXj1-yokrJ7kdWFT2dzQQpfDgvR57bpwD3CviPFYNj3geoX_CHMZmFf2w=w500-rw', N'Samsung Galaxy Tab A7 Lite tablet is a shortened version of the "popular" Galaxy Tab A7 tablet line under the Samsung brand, meeting the entertainment needs of customers in the popular segment with a large screen but still Compact and pocket-friendly.', 0),
(N'Tablet Xiaomi Redmi Pad (3GB/64GB)', 4, 3, 6990.00, N'https://cf.shopee.vn/file/sg-11134201-22110-gb5ufpldk5jve1_tn', N'Xiaomi Redmi Pad (3GB / 64GB) is a name that has been mentioned a lot in the technology world recently, when it appeared on many newspapers, with a price that is not too high but is equipped with an extremely good set of parameters. Promising to be the expected Xiaomi tablet in the second half of 2022.', 0),
(N'Rechargeable battery backup Polymer 20.000 mAh Type C PD Samsung EB-P5300', 3, 4, 1300.00, N'https://cdn.tgdd.vn/Products/Images/57/233280/polymer-20000mah-type-c-25w-samsung-eb-p5300-2-1-org.jpg', N'The high-quality plastic shell is shatterproof, helping to reduce the weight of the power bank, slightly compact in the hand but not heavy at 392 grams.', 0),
(N'Smartphone Realme 9 Pro+ 5G', 5, 1, 8990.00, N'https://cf.shopee.vn/file/sg-11134201-22120-rcppesi5blkv5b_tn', N'Realme 9 Pro + 5G - Realmes mid-range smartphone has been launched, it has a colorful design, 3-camera cluster with IMX766 sensor to help you get vivid photos.', 0),
(N'Loudspeaker Xiaomi x21', 4, 4, 9800.00, N'https://cf.shopee.vn/file/sg-11134201-22120-swk4laid7qkvaf_tn', N'Compact design, trendy black surface, attached hanging rope for easy portability', 1),
(N'Laptop Apple MacBook Air M2 2022 16GB/512GB/10-core GPU', 1, 2, 32990.00, N'https://cf.shopee.vn/file/1cba156175a5ef0b0d356b52451b4c42_tn', N'Elegant, luxurious design and outstanding performance from the advanced Apple M2 processor found in Macbook Pro M2, promises to bring a lot of value to creative users, serving well the needs of graphic design. Advanced.', 0),
(N'Laptop Dell Gaming G15 5515 R5 ', 6, 2, 234900, N'https://cf.shopee.vn/file/sg-11134201-22110-xtmsgahllojvf8_tn', N'Elegant, luxurious design and outstanding performance from the advanced Apple M2 processor found in Macbook Pro M2, promises to bring a lot of value to creative users, serving well the needs of graphic design. Advanced.', 0),
(N'Laptop Dell Vostro 3510 i3 1115G4/8GB/256GB', 6, 2, 23496.00, N'https://cf.shopee.vn/file/16af100d819f1d2f101f590bdc37c7bb_tn', N'Dell Vostro 3510 i3 laptop (V5I3305W) has a simple, universal design, but has a stable configuration thanks to the 11th generation Intel chip, fully meeting all basic daily needs, promising to be an assistant. It is a powerful tool with an extremely ideal price, suitable for almost all users.', 0),
(N'Smartphone OPPO Find X5 Pro 5G', 2, 1, 10000.00, N'https://cf.shopee.vn/file/f60d2869645abb84347bcee8ceba653c_tn', N'OPPO Find X5 Pro 5G is probably the brightest name on the list of phones with impressive design in 2022. The device was launched by the company with an unprecedented unique appearance, along with the Upgrade in camera quality thanks to a partnership with camera manufacturer Hasselblad.', 1),
(N'Smartphone OPPO A96', 2, 1, 69005.00, N'https://cdn.tgdd.vn/Products/Images/42/274381/oppo-a96-4g-glr-den-1.jpg', N'OPPO A96 is a name that is mentioned a lot on today is technology forums, thanks to possessing a very eye-catching appearance and a series of impressive parameters in the price segment such as high performance, sharp camera. sharp.', 0),
(N'Smartphone Samsung Galaxy Z Flip4', 3, 1, 20990.00, N'https://cf.shopee.vn/file/sg-11134201-22100-eikjg4r7ueivce_tn', N'Samsung Galaxy Z Flip4 128GB has officially launched into the technology market, marking Samsung is return on the user-oriented path of convenience on folding phones. With increased durability and beautiful design, Flip4 becomes one of the bright spots for the second half of 2022.', 0),
(N'Smartphone Samsung Galaxy S22', 3, 1, 25990.00, N'https://cf.shopee.vn/file/sg-11134201-22110-4v6e4q8ekojv6a_tn', N'Galaxy S22 Ultra 5G is the most advanced smartphone in the Galaxy S22 series 3 that Samsung has launched. Integrating the perfect S Pen in the body, equipped with a powerful processor for extremely smooth and outstanding usage tasks with a unique bezel-less camera cluster with its own signature.', 0),
(N'Smartphone Samsung Galaxy Z Fold4', 3, 1, 37990.00, N'https://cf.shopee.vn/file/sg-11134201-22110-fa3bglx5gbkv40_tn', N'Samsung Galaxy Z Fold4 256GB has officially been introduced to the technology market, bringing with it many valuable improvements that make the Galaxy Z Fold a better folding phone.', 1),
(N'Smartphone Realme 8 Pro', 5, 1, 7990.00, N'https://cf.shopee.vn/file/e91dbf6f6749e2152490d0d1e4a1c2fe_tn', N'Besides Realme 8, Realme 8 Pro was also introduced to users with the main highlight being the appearance of a super sharp 108 MP camera with 50 W SuperDart charging technology and comes with an ideal mid-range price.', 0),
(N'Smartphone Realme C33', 5, 1, 3990.00, N'https://cf.shopee.vn/file/sg-11134201-22100-xlklz4leaziv56_tn', N'Realme C33 (3GB/32GB) is a name that attracts a lot of attention on technology forums, owning on the device is a trending design that comes with a large and clear screen that allows you to use entertainment is better.', 1),
(N'Laptop Dell Gaming G15 5515 R5', 6, 2, 432349.00, N'https://cf.shopee.vn/file/ea7a519d1ff1fa3cbaf934a75253ce65_tn', N'Referring to the gaming laptop line, the Dell family also owns a super product that cannot be ignored, the Dell Alienware m15 R6 i7 laptop (P109F001DBL) with a powerful 6 GB RTX 3060 graphics card ready to go with you to conquer any challenge. challenge battle game.', 0),
(N'Laptop Apple MacBook Air M1 2020', 1, 2, 30090.00, N'https://cf.shopee.vn/file/sg-11134201-22100-7jka5nkyr2iv3c_tn', N'Laptop Apple Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.', 1),
(N'Laptop Lenovo ThinkPad X1 Carbon Gen 10', 7, 2, 49490.00, N'https://cf.shopee.vn/file/29f488284e514a3b38134fad2804399e_tn', N'The Lenovo ThinkPad X1 Carbon Gen 10 i7 1260P laptop (21CB00A8VN) not only possesses a sturdy Carbon fiber design, enterprise-class security capabilities, but also has outstanding performance from the Intel Gen 12 processor and meets the standards. Intel Evo platform standard, a high-end - luxury laptop that meets all needs, including sophisticated businessmen.', 0),
(N'Laptop Lenovo Ideapad Gaming 3 15IAH7', 7, 2, 30490.00, N'https://cf.shopee.vn/file/sg-11134201-22110-bqewsbrnlvjv62_tn', N'The Lenovo ThinkPad X1 Carbon Gen 10 i7 1260P laptop (21CB00A8VN) not only possesses a sturdy Carbon fiber design, enterprise-class security capabilities, but also has outstanding performance from the Intel Gen 12 processor and meets the standards. Intel Evo platform standard, a high-end - luxury laptop that meets all needs, including sophisticated businessmen.', 1),
(N'Laptop MSI Modern 15 A5M R7 ', 8, 2, 15690.00, N'https://cf.shopee.vn/file/sg-11134201-22110-3rqkytzdihjv9f_tn', N'If you are looking for a laptop that can fully meet all your work or entertainment needs from basic to advanced but still owns a luxurious, trendy design style, versatile power and price. Completely reasonable, the MSI Modern 15 A5M R7 Laptop (237VN) promises to bring above all great experiences.', 1),
(N'PC Gaming Online TG3770 – Core i7', 8, 5, 1560.00, N'https://cf.shopee.vn/file/sg-11134201-22110-fmj6vy0eb1jv39_tn', N'PC Gaming & Streaming – Core i7 is a gaming computer product line aimed at Online and Stream Game titles: Call Of Duty, GTA 5, Dota, Pubg, League of Legends, Fifa online 4, Cf…, with processor Powerful Intel Core i7 processor.\r\n\r\nIn terms of external design, the computer is built from a Gaming V212 case with the main black color, Rainbow LED strip to increase heat dissipation, aesthetics and prominence for your PC system.', 1),
(N'Laptop MSI Gaming Alpha 15', 8, 2, 3569.00, N'https://lh3.googleusercontent.com/6OCOU6ObPCjZraWOEg-vdXnFabmcgzFHRwmXIo33h3P8Gw6YmU35z2b99cZAiWvhP1XpMr5Q_MwxjEtZponPygvP_ikQcfw=w500-rw', N'A super product that deserves to be expected by gamers is the MSI Gaming Alpha 15 B5EEK R7 laptop (218VN) when possessing the breakthrough power from AMD 5800H processor and 8 GB RX 6600M discrete graphics card, always ready to stir up all virtual battlefields with me.', 1),
(N'Laptop MSI Gaming GF63 Thin 11UD i7', 8, 2, 2649.00, N'https://lh3.googleusercontent.com/OOVvmD2jHSdlrqFH_0K-gdytLXA9Krail4oCsb10QKAh04082O_NW5IPSJ5M84gyf4VxJEN3CJpFB6pJYdiyOrmMywCEJ-FJ=w500-rw', N'Possessing a unique and powerful appearance suitable for every gamer, the MSI Gaming GF63 Thin 11UD i7 11800H (648VN) laptop is equipped with the 11th generation Intel chip with outstanding performance when accompanied by a video card. The RTX 3050 Ti Max-Q is ready to play any popular game or graphic design intensively.', 1),
(N'PC Gaming Online GT6400 – G6400', 8, 5, 850.00, N'https://lh3.googleusercontent.com/BE_WqWBvfrdurpJb-z4n4IvG4Hnfc407kBOms1RXCLcBxescTAN1GgV9aRxuDw-pIE7hJSjUXKsUvL8gow=w500-rw', N'PC Gaming Online GT6400 – Universal – G6400 is a gaming computer set that is optimized in the price range of 10 million to meet today is Hot titles: Lmht, Fifa, Pursuit, Cf....The PC set has a good price. , with the ability to upgrade later, the configuration is universal enough to experience Online Game titles, this is definitely one of the best options in the 10 million dong segment you should not ignore.', 0)

-- --------------------------------------------------------

-- table detail
drop table detail
create table detail (
	dId int IDENTITY(1, 1) not null primary key,
	pID int not null,
	slide1 nvarchar(255),
	slide2 nvarchar(255),
	slide3 nvarchar(255),
	FOREIGN KEY (pID) REFERENCES products (pID),
)
select * from detail

insert into detail values 
(1, N'https://lh3.googleusercontent.com/UFoSzyTiqGADaxJrWz673ZQ5yd9YlqJ6sq4Wjc8lyEc6mG5uuj4S7ejiNajj3_cVt3jG3KoAfWAiPDiX0KmD8XH_Z9lGGNay=w500-rw', N'https://lh3.googleusercontent.com/32XY2mVrjXMUI3ckqYxIyl3egSikVjLO135lmx7gLHOfIYnSMk-zbuw3CSVopfUhXFl3IoZYxqVp97T7hu4GHJzQwahjTnkh=rw', N'https://lh3.googleusercontent.com/BomGhBrSdaLuQFgwca-IQ484Q3D0K5HGAjfVELn-bqvTU2WeueDhnDLPaR4W19KVgbrtpZYowkGgsnJv3O869dtOdunZtu3K=rw'),
(2, N'https://cdn.tgdd.vn/Products/Images/42/250728/iphone-13-pro-max-gold-1-200x200.jpg', N'https://cdn.tgdd.vn/Products/Images/42/250728/iphone-13-pro-max-silver-200x200.jpg', N'https://cdn.tgdd.vn/Products/Images/42/250728/iphone-13-pro-max-sierra-blue-200x200.jpg'),
(3, N'https://lh3.googleusercontent.com/x5lQDO2z0DWSBqko-j7KzQHs_sxvclBiBxaiYMx5ZQDdJ0AuQU7n6R5QlUEdlKNZnSHnP_ASpV-TlnxBQ9SnjRMfESw9jYk=w500-rw', N'https://lh3.googleusercontent.com/TunKFPxkk97u119wa--vKTZwhREX949CO2mLSYmgrYecRrCQwEgjl21-immJ-A5eOwzJGf5rUg6x3LpcRdlMXmnTC8UN1tmp=rw', N'https://lh3.googleusercontent.com/VJ-yaWLZmoW9duIA4gw5l4oe4fbqWBLsH5C4oNJniz2Rr2dkYLgYYCNfwHN76muOalF9BLaN5yjlrqqcCJHlqIrAFQVu9L5sQw=rw'),
(4, N'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-thumb-xanh-1-200x200.jpg', N'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-thumb-den-200x200.jpg', N'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-black-4.jpg'),
(5, N'https://cdn.tgdd.vn/Products/Images/44/282885/Slider/vi-vn-apple-macbook-pro-m2-2022-03.jpg', N'https://cdn.tgdd.vn/Products/Images/44/282885/Slider/vi-vn-apple-macbook-pro-m2-2022-04.jpg', N'https://cdn.tgdd.vn/Products/Images/44/282885/Slider/vi-vn-apple-macbook-pro-m2-2022-05.jpg'),
(6, N'https://lh3.googleusercontent.com/mL7rqStFFUt2yZXDt1nIQIpZoHtqWQlaKBUPrNuPcRXj1-yokrJ7kdWFT2dzQQpfDgvR57bpwD3CviPFYNj3geoX_CHMZmFf2w=w500-rw', N'https://lh3.googleusercontent.com/kutyWmxwRPXIvE3Q3xm5ozDsiM8PtuuRsRfSeb3XB3K0vSkdNKlmWRaOyysYbha_XBJVqyShuuwm2yaTHOT79WY9LvDowM4=rw', N'https://lh3.googleusercontent.com/wNUOW_IS7qPyqZNuj8EK_iuVmri9l9FTsa64FnYq9D3NZbThmM7nGB7ebsHODzQr6fjWWFJNO76r_Y7dtOY6yMKm2fwUm-s=rw'),
(7, N'https://cdn.tgdd.vn/Products/Images/522/281633/Slider/vi-vn-xiaomi-redmi-pad-1-(6).jpg', N'https://cdn.tgdd.vn/Products/Images/522/281633/Slider/vi-vn-xiaomi-redmi-pad-1-(5).jpg', N'https://cdn.tgdd.vn/Products/Images/522/281633/Slider/vi-vn-xiaomi-redmi-pad-1-(4).jpg'),
(8, N'https://cdn.tgdd.vn/Products/Images/57/233280/polymer-20000mah-type-c-25w-samsung-eb-p5300-3-1-org.jpg', N'https://cdn.tgdd.vn/Products/Images/57/233280/polymer-20000mah-type-c-25w-samsung-eb-p5300-4-1-org.jpg', N'https://cdn.tgdd.vn/Products/Images/57/233280/polymer-20000mah-type-c-25w-samsung-eb-p5300-5-org.jpg'),
(9, N'https://cdn.tgdd.vn/Products/Images/42/255513/Slider/1-1020x570.jpg', N'https://cdn.tgdd.vn/Products/Images/42/255513/Slider/3-1020x570.jpg', N'https://cdn.tgdd.vn/Products/Images/42/255513/Slider/2-1020x570.jpg'),
(10, N'https://cf.shopee.vn/file/f740abca560518414a0ee1bde2875d61_tn', N'https://cf.shopee.vn/file/5d082e612562d0b4a199a9e18b14dd18_tn', N'https://cf.shopee.vn/file/dcfbd2ce9ce690ec454fce2651768f2d_tn'),
(11, N'https://cdn.tgdd.vn/Products/Images/44/289441/apple-macbook-air-m2-2022-16gb-600x600.jpg', N'https://cdn.tgdd.vn/Products/Images/44/289441/Slider/vi-vn-apple-macbook-air-m2-2022-16gb-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/289441/Slider/vi-vn-apple-macbook-air-m2-2022-16gb-3.jpg'),
(12, N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-3.jpg', N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/dell-gaming-g15-5515-r5-p105f004cgr-04-1020x570.jpg'),
(13, N'https://lh3.googleusercontent.com/VdcWgf7YzQ_-XX54XGhHIuQWlA02SvODKVacdbiI--lGVs4mrOulR4xsvnvz5RUjwkvi6kR2bksJC18kdk7N2TsPL8_dDyw=w500-rw', N'https://lh3.googleusercontent.com/Ca_sbUFJC11eHiFBqyfTeuTlD8Uuyxg6g2EP3avjLBimgCj9XGhwfN0uXN4ifKsQxivqa-42JgdnJwBHFdzuDmzdNSWyfXAhSw=w500-rw', N'https://lh3.googleusercontent.com/K5Ed9MDtoNzfTYUQ-bSa2B1jSVdLlDUuLlHNqE-mnSJTqGWZTUqb-0TpTCLNiyDFkHb6wQXim8HDWjDjPfSphmMebRqZsrQ=w500-rw'),
(14, N'https://cdn.tgdd.vn/Products/Images/42/250622/Slider/oppo-find-x5-pro637872833397374966.jpg', N'https://cdn.tgdd.vn/Products/Images/42/250622/Slider/oppo-find-x5-pro637872833398214922.jpg', N'https://cdn.tgdd.vn/Products/Images/42/250622/Slider/oppo-find-x5-pro637872833400144873.jpg'),
(15, N'https://cdn.tgdd.vn/Products/Images/42/274381/oppo-a96-4g-glr-den-4.jpg', N'https://cdn.tgdd.vn/Products/Images/42/274381/oppo-a96-4g-glr-den-5.jpg', N'https://cdn.tgdd.vn/Products/Images/42/274381/oppo-a96-4g-glr-den-6.jpg'),
(16, N'https://cdn.tgdd.vn/Products/Images/42/258047/Slider/vi-vn-samsung-galaxy-z-flip4--(6).jpg', N'https://cdn.tgdd.vn/Products/Images/42/258047/Slider/vi-vn-samsung-galaxy-z-flip4--(4).jpg', N'https://cdn.tgdd.vn/Products/Images/42/258047/Slider/vi-vn-samsung-galaxy-z-flip4--(7).jpg'),
(17, N'https://cdn.tgdd.vn/Products/Images/42/271695/Slider/3.Ma%CC%80nhi%CC%80nh-1020x570.jpg', N'https://cdn.tgdd.vn/Products/Images/42/271695/Slider/SamsungGalaxyS22256GB-1020x570.jpg', N'https://cdn.tgdd.vn/Products/Images/42/271695/Slider/SamsungGalaxyS22camera-1020x570.jpg'),
(18, N'https://cdn.tgdd.vn/Products/Images/42/285031/Slider/samsung-galaxy-z-fold4-5g-512gb637969579502308221.jpg', N'https://cdn.tgdd.vn/Products/Images/42/285031/Slider/samsung-galaxy-z-fold4-5g-512gb637969579504218244.jpg', N'https://cdn.tgdd.vn/Products/Images/42/285031/Slider/samsung-galaxy-z-fold4-5g-512gb637969579505078256.jpg'),
(19, N'https://cdn.tgdd.vn/Products/Images/42/235986/Slider/vi-vn-realme-8-pro-cauhinh.jpg', N'https://cdn.tgdd.vn/Products/Images/42/235986/Slider/vi-vn-realme-8-pro-amthanh.jpg', N'https://cdn.tgdd.vn/Products/Images/42/235986/Slider/vi-vn-realme-8-pro-pin.jpg'),
(20, N'https://cdn.tgdd.vn/Products/Images/42/292247/Slider/vi-vn-realme-c33-4gb-slider--(5).jpg', N'https://cdn.tgdd.vn/Products/Images/42/292247/Slider/vi-vn-realme-c33-4gb-slider--(4).jpg', N'https://cdn.tgdd.vn/Products/Images/42/292247/Slider/vi-vn-realme-c33-4gb-slider--(3).jpg'),
(21, N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/dell-gaming-g15-5515-r5-p105f004cgr-04-1020x570.jpg', N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-5.jpg', N'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-6.jpg'),
(22, N'https://cdn.tgdd.vn/Products/Images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-291120-0219090.jpg', N'https://cdn.tgdd.vn/Products/Images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-291120-0231270.jpg', N'https://cdn.tgdd.vn/Products/Images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-291120-0223010.jpg'),
(23, N'https://cdn.tgdd.vn/Products/Images/44/292926/Slider/vi-vn-lenovo-thinkpad-x1-carbon-gen-10-i7-21cb00a8vn-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/292926/Slider/vi-vn-lenovo-thinkpad-x1-carbon-gen-10-i7-21cb00a8vn-3.jpg', N'https://cdn.tgdd.vn/Products/Images/44/292926/Slider/vi-vn-lenovo-thinkpad-x1-carbon-gen-10-i7-21cb00a8vn-4.jpg'),
(24, N'https://cdn.tgdd.vn/Products/Images/44/283775/Slider/vi-vn-lenovo-ideapad-gaming-3-15iah7-i5-82s9007tvn-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/283775/Slider/vi-vn-lenovo-ideapad-gaming-3-15iah7-i5-82s9007tvn-3.jpg', N'https://cdn.tgdd.vn/Products/Images/44/283775/Slider/vi-vn-lenovo-ideapad-gaming-3-15iah7-i5-82s9007tvn-4.jpg'),
(25, N'https://cdn.tgdd.vn/Products/Images/44/263792/Slider/vi-vn-msi-modern-15-a5m-r7-237vn-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/263792/Slider/vi-vn-msi-modern-15-a5m-r7-237vn-4.jpg', N'https://cdn.tgdd.vn/Products/Images/44/263792/Slider/vi-vn-msi-modern-15-a5m-r7-237vn-5.jpg'),
(26, N'https://lh3.googleusercontent.com/d-MKHp8sEnk-6YVA4oZGbHAFBaZugOjxJybesIf3UJeLMLthwyL1fiRrmh5rEKCVgjiWRhpFPxMOPCC-Faki_2w3YepOvYOz=w500-rw', N'https://lh3.googleusercontent.com/PHc4YGoYa9-fykxCtObYUgpsZ-2TDK3Wg4MMFFn52cs2-9NLwGMH5_RHOc0NjuUkXo-llF2chiYjosZF0XqpTBFXTIfr9WxuOg=rw', N'https://lh3.googleusercontent.com/cTBUJFZypHj0w_McYTVsoz4PrHRwbXaaRiu0fVPOZ6tiXtl31QsNz-PSZHSjhKiLmXmYCBpml-u8mb6SmgJNbSQSs0ziZWh6=rw'),
(27, N'https://lh3.googleusercontent.com/qKrB3sc_3bwCpak9j6nP3vSgTs5IijYXctfRbWV94UEgxW0cdnd2CmQqPCmB1_YbPd1MX5_yY4YqHKk6r2CSNnqdwOTJ1G6A5A=rw', N'https://lh3.googleusercontent.com/oD2CrZWe4sAFhD0ZAhOgz7yya2chInZU3QCPbWRng2xjLgnb6Mok6c2CgYsDJOhI3GDjDX4VEST-0CWewG9b9I4CTaYfD2qv=w500-rw', N'https://lh3.googleusercontent.com/bui0_B2e6Q38-uyQoNIHU9mnHj5O6-rumjiATc5Yl3eTWU2bithn0SzQLzzwuyxC_WI3lrAmrYcj84EGxP8Sv3Uk19Hoa673=w500-rw'),
(28, N'https://lh3.googleusercontent.com/bugiNLYICWLwrHWfrFGrI8dhdgWdnwwGNcS7grqCMJmgqhp8FxGvg1OBEfqwO2GaIsbIm3h4XBQy1vaMcnfrXQE7EzheiWDm=w500-rw', N'https://lh3.googleusercontent.com/TXybEfD9Ae5JiNHGflY1fxv_ku1deYWku5w30BBoTgmLCmuvz6VjdQ951JBd9My2S19V3uI8RSEUStLGZvb_vNHwbVIeTAz_=w500-rw', N'https://lh3.googleusercontent.com/ZvPajujJHhXBBn-kHgpTHKrpLljRYM48V0_d1qPjR1K9e4zDj4jHjVpl2wj_tYtZVhHlb_eQ1Pew4hB8BOsPPkA0Mom4RJ8R=w500-rw'),
(29, N'https://lh3.googleusercontent.com/h0Eflv-i5QWjJtGYGyxgsZWgp2y1Pq38dQy22-Ap7Ok1pTEy2wnxx9QkfZsXBKaE6U7vSRAq0YRqWS_XYg=w500-rw', N'https://lh3.googleusercontent.com/RoDeDVd0TT1PbARAdlRbs1DUp8UN8e2in4Bcil1N886IVVhtrgKwCbha7y4SaUefyAggiw5Y6SdY7cxXRw=w500-rw', N'https://lh3.googleusercontent.com/BE_WqWBvfrdurpJb-z4n4IvG4Hnfc407kBOms1RXCLcBxescTAN1GgV9aRxuDw-pIE7hJSjUXKsUvL8gow=w500-rw');

select * from detail
delete detail

select detail.pID, [name], price, [image], [description], slide1, slide2, slide3 
from products, detail
where products.pID = detail.pID and detail.pID = 1


--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS category;
CREATE TABLE category (
  type_id int IDENTITY(1, 1) NOT NULL primary key,
  type_name nvarchar(100) NOT NULL,
)
--
-- Đang đổ dữ liệu cho bảng `protypes`
--
drop table category
INSERT INTO category (type_name) VALUES
(N'Phone'),
(N'Laptop'),
(N'Tablet'),
(N'PC'),
(N'Accessory'),
(N'Iphone');
select * from category
delete category
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  uID int IDENTITY(1, 1) NOT NULL primary key,
  username nvarchar(255) NOT NULL,
  password nvarchar(255) NOT NULL,
  ngaysinh date,
  gioitinh nvarchar(10),
  email nvarchar(50),
  soDT nvarchar(50),
  diachi nvarchar(50),
  isSell int,
  isAdmin int 
)

--
-- Đang đổ dữ liệu cho bảng `users`
--
INSERT INTO users (username, password, ngaysinh, gioitinh, email, soDT, diachi, isSell, isAdmin) VALUES
(N'admin333', N'123', N'2000/2/3', N'nam', N'admin@gmail.com', N'0938475722', N'hai ba trung', 1, 1),
(N'user', N'222', N'1999/6/12', N'nữ', N'nu@gmail.com', N'0933772233', N'nguyen hue', 1, 0),
(N'hunu', N'2323', N'2001/8/23', N'nam', N'trac@gmail.com', N'0933647222', N'trung trac', 0, 0),
(N'kkdo', N'2311', N'2000/4/21', N'nam', N'nuy@gmail.com', N'0333894222', N'nu lm nu', 0, 0),
(N'ddx', N'231111', N'1998/3/29', N'nữ', N'tran@gmail.com', N'0943872333', N'ho chi minh', 0, 0);
select * from [users] where username = 'user' and password = '222'
delete [users]
select * from users where username = 'hunu'
update users set username = N'ddv', password=N'11111', ngaysinh='1990/2/1', gioitinh=N'nữ', email=N'kru@gmail.com', soDT='0933999222', diachi=N'dkauwidas' 
where username=N'ddx'

insert into users (username, password, email, soDT, diachi) 
values (N'axs', N'24551d', N'dasw@gmail.com', N'0912888333', N'ho chi minh')

update users set ngaysinh = N'2002/1/2', gioitinh = N'nam' where username = N'axs'


------------------------------

------------------------------
-- table bill
drop table bill;
create table bill(
	maHD int IDENTITY(1, 1) NOT NULL primary key,
	pID int NOT NULL,
	type_id int NOT NULL,
	uID int NOT NULL,
	ngayban smalldatetime NOT NULL default CURRENT_TIMESTAMP,
	quantity int NOT NULL,
	tongtien float NOT NULL,
	FOREIGN KEY (pID) REFERENCES products (pID),
	FOREIGN KEY (type_id) REFERENCES category (type_id),
	FOREIGN KEY (uID) REFERENCES users (uID),
)

insert into bill (pID, type_id, uID, ngayban, quantity, tongtien) values
(1, 2, 3, N'2017/2/12', 2, 79000.00),
(3, 3, 3, N'2017/12/3', 2, 568000.00),
(12, 1, 2, N'2017/12/4', 2, 45000.00),
(9, 2, 4, N'2017/5/15', 2, 23000.00),
(13, 5, 5, N'2018/6/7', 2, 32000.00),
(21, 6, 4, N'2018/3/27', 2, 20000.00),
(4, 2, 3, N'2018/10/12', 2, 50000.00),
(16, 4, 2, N'2018/8/21', 2, 92000.00),
(17, 5, 4, N'2018/11/12', 2, 20000.00),
(11, 5, 5, N'2018/12/27', 2, 88000.00),
(14, 4, 4, N'2018/8/11', 2, 37000.00),
(2, 6, 5, N'2019/12/28', 2, 36000.00),
(8, 4, 5, N'2019/2/1', 2, 870400.00),
(16, 2, 3, N'2019/9/12', 2, 20000.00),
(11, 3, 3, N'2019/12/18', 2, 376200.00),
(9, 6, 3, N'2020/12/11', 2, 219200.00),
(14, 2, 4, N'2020/4/7', 2, 291300.00),
(11, 5, 4, N'2020/12/12', 2, 217200.00),
(4, 2, 5, N'2020/7/11', 2, 872300.00),
(3, 1, 5, N'2020/3/22', 2, 341800.00),
(11, 3, 5, N'2021/12/8', 2, 218700.00),
(17, 5, 5, N'2021/6/22', 2, 387300.00),
(7, 5, 3, N'2021/7/8', 2, 288200.00),
(5, 1, 3, N'2021/4/9', 2, 212700.00),
(2, 4, 3, N'2021/12/2', 2, 88200.00),
(3, 4, 4, N'2021/12/3', 2, 387300.00),
(17, 5, 3, N'2021/1/10', 2, 382300.00),
(19, 2, 3, N'2022/2/12', 2, 273700.00),
(12, 1, 3, N'2022/9/4', 2, 378900.00),
(5, 3, 4, N'2022/8/22', 2, 282700.00),
(25, 2, 4, N'2022/6/7', 2, 211200.00),
(25, 1, 4, N'2022/3/4', 2, 218700.00),
(4, 6, 5, N'2022/10/2', 2, 234400.00),
(22, 4, 2, N'2022/12/22', 2, 237200.00),
(2, 1, 2, N'2022/9/15', 2, 838200.00),
(14, 2, 2, N'2022/12/16', 2, 383200.00),
(21, 5, 2, N'2022/12/4', 2, 998400.00),
(8, 3, 3, N'2022/12/5', 2, 322100.00),
(12, 5, 4, N'2022/12/13', 2, 475500.00),
(11, 6, 5, N'2022/12/11', 2, 123400.00),
(12, 6, 3, N'2022/12/22', 2, 453400.00),
(4, 4, 4, N'2022/12/23', 2, 555400.00);

insert into bill (pID, type_id, uID, quantity, tongtien) values 
(1, 1, 2, 3, 50000)

delete bill
select * from bill
--Thống kê biểu đồ tròn doanh thu của cửa hàng trong một tháng theo loại danh mục hàng hoá  
select category.type_name, sum(bill.tongtien) as tongtien 
from bill, category 
where bill.type_id = category.type_id  and (MONTH(ngayban)) = 12 
group by category.type_name

select (MONTH(ngayban)) as thang from bill

select maHD, pID, users.uID, ngayban, quantity, tongtien 
from bill, users
where (YEAR(ngayban)) = 2022 and (MONTH(ngayban)) = 12 and (DAY(ngayban)) = 29 and users.uID = bill.uID and users.uID = 5


-- Thống kê biểu đồ cột doanh thu của cửa hàng theo tuỳ chọn thời gian
select (YEAR(ngayban)) as Năm, sum(bill.tongtien) as tongtien 
from bill 
group by (YEAR(ngayban));


delete orders
create table orders (
	oID varchar(20) NOT NULL primary key,
	uID int NOT NULL,
	o_address nvarchar(255) NOT NULL,
	ngaymua datetime NOT NULL default CURRENT_TIMESTAMP,
	tinh_trang_don_hang int NOT NULL
)

insert into orders values 
(3, 3, N'55 Pham Van Dong', N'2021/2/2', 0)
select * from orders

drop table orders_detail
create table orders_detail (
	o_d_ID int IDENTITY(1, 1) NOT NULL primary key,
	oID varchar(20) NOT NULL,
	pID int NOT NULL,
	quantity int NOT NULL,
	tongtien float NOT NULL,
	FOREIGN KEY (oID) REFERENCES orders (oID),
)

insert into orders_detail values 
(1, 3, 3, 2, 40000.00)
select * from orders_detail


-- select order
select orders.oID, uID, o_address, ngaymua, tinh_trang_don_hang, pID, quantity, tongtien
from orders, orders_detail
where orders.oID = orders_detail.oID and orders.oID = 1672388169416
