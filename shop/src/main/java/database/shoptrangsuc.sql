-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2023 lúc 10:14 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoptrangsuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madonhang` varchar(50) NOT NULL,
  `masanpham` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `gia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` varchar(50) NOT NULL,
  `ngaydathang` date NOT NULL,
  `makhachhang` varchar(50) NOT NULL,
  `tongtien` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` varchar(50) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `hovaten` varchar(255) NOT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tendangnhap`, `matkhau`, `hovaten`, `gioitinh`, `ngaysinh`, `sodienthoai`, `email`) VALUES
('KH241', 'HoangAnh', 'pvC4X63rIs8Yzh3prO7dxKDLhck=', 'Phạm Hoàng Anh', 'Nam', '2023-02-01', '+841234567', 'ah2789286@gmail.com'),
('KH910', 'ThaoDien', 'UBwa74HwQppbBEsFgiw7BeuAvQQ=', 'Trần Thảo Điền', 'Nam', '2003-06-22', '0353494201', 'thaongophuong45@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` varchar(50) NOT NULL,
  `tenloai` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`) VALUES
('DC', 'Dây Chuyền'),
('DH', 'Đồng Hồ'),
('LA', 'Lắc'),
('NH', 'Nhẫn'),
('VO', 'Vòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpahm` varchar(50) NOT NULL,
  `maloai` varchar(50) NOT NULL,
  `tensanpham` varchar(50) NOT NULL,
  `giasanpham` int(11) NOT NULL DEFAULT 0,
  `hinhsp` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `mota` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpahm`, `maloai`, `tensanpham`, `giasanpham`, `hinhsp`, `soluong`, `mota`) VALUES
('DC01', 'DC', 'Dây chuyền Vàng trắng Ý 18K PNJ 0000W000818', 8650000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/149/gd0000w000818-day-chuyen-vang-trang-y-18k-pnj.png', 12, 'Bằng việc kết hợp chất liệu vàng ý 18K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.'),
('DC02', 'DC', 'Dây chuyền Nam Vàng Ý 18K PNJ 0000C060145', 47290000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/151/gd0000c060145-day-chuyen-vang-18k-pnj-01.png', 14, 'Bằng việc kết hợp chất liệu vàng ý 18K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.'),
('DC03', 'DC', 'Dây chuyền nam Bạch kim PNJ 0000W060014', 21990000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/142/pd0000w060014-day-chuyen-nam-bach-kim-pnj-1.png', 20, 'Bằng việc kết hợp chất liệu vàng ý 18K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.'),
('DC04', 'DC', 'Dây chuyền Vàng Ý 18K PNJ 0000Y06046', 48590000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/141/gd0000y060460-day-chuyen-vang-y-18k-pnj-1.png', 30, 'Bằng việc kết hợp chất liệu vàng ý 18K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.'),
('DC05', 'DC', 'Dây chuyền Vàng Trắng Ý 18K PNJ Mắt hinh tim 0000W', 35590000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/141/GD0000W061138-Day-chuyen-Vang-Trang-18K-PNJ-Mat-hinh-tim-1.png', 10, 'Bằng việc kết hợp chất liệu vàng ý 18K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.'),
('DH01', 'DH', 'Đồng hồ Calvin Klein Nam 25200063 Dây Kim Loại 44 ', 5378000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/142/25200062_Desktop_1.jpg', 20, 'Đồng hồ Calvin Klein là sự hợp tác giữa nhãn hiệu thời trang nổi tiếng của Mỹ và Tập đoàn Swatch, hoạt động từ năm 1997. Với lối thiết kế hợp thời trang, đơn giản nhưng vẫn có nét độc đáo riêng, được kết hợp cùng bộ máy đồng hồ Thụy Sỹ chất lượng. Những chiếc đồng hồ Calvin Klein là món phụ kiện hoàn hảo cho những tín đồ thời trang.'),
('DH02', 'DH', 'Đồng hồ Calvin Klein Nam 25200117 Dây Kim Loại 44 ', 5979000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/142/25200117_Desktop_1.jpg', 3, 'Đồng hồ Calvin Klein là sự hợp tác giữa nhãn hiệu thời trang nổi tiếng của Mỹ và Tập đoàn Swatch, hoạt động từ năm 1997. Với lối thiết kế hợp thời trang, đơn giản nhưng vẫn có nét độc đáo riêng, được kết hợp cùng bộ máy đồng hồ Thụy Sỹ chất lượng. Những chiếc đồng hồ Calvin Klein là món phụ kiện hoàn hảo cho những tín đồ thời trang.'),
('DH03', 'DH', 'Đồng Hồ Just Cavalli Nữ JC1L238M0045 Dây Kim Loại ', 5850000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/139/JC1L238M0045_Desktop_1.jpg', 10, 'Với những mẫu thiết kế đặc biệt cá tính, độc đáo, không trộn lẫn. Với đích đến là những điều tốt nhất cho tốt nhất. Just Cavalli luôn đề cao cái tôi của người đeo.'),
('DH04', 'DH', 'Đồng Hồ Just Cavalli Nữ JC1L238M0075 Dây Kim Loại ', 6500000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/139/JC1L238M0075_Desktop_1.jpg', 2, 'Với những mẫu thiết kế đặc biệt cá tính, độc đáo, không trộn lẫn. Với đích đến là những điều tốt nhất cho tốt nhất. Just Cavalli luôn đề cao cái tôi của người đeo.'),
('DH05', 'DH', 'Đồng Hồ Just Cavalli Nữ JC1L234M0115 Dây Kim Loại ', 6500000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/139/JC1L234M0115_Desktop_1.jpg', 1, 'Với những mẫu thiết kế đặc biệt cá tính, độc đáo, không trộn lẫn. Với đích đến là những điều tốt nhất cho tốt nhất. Just Cavalli luôn đề cao cái tôi của người đeo.'),
('L01', 'LA', 'Lắc tay Vàng 18K PNJ 0000Y001883', 15818000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/135/gl0000y001883-lac-tay-vang-18k-pnj-1.png', 2, 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của vàng 18K được chế tác tinh xảo, kết hợp các chi tiết bông hoa tinh xảo, tạo nên sự quý phái và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.'),
('L02', 'LA', 'Lắc tay Bạc đính đá STYLE By PNJ Nàng Thu XM00C000', 1125000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/136/slxm00c000007-lac-tay-bac-dinh-da-style-by-pnj-trinh-collection-1.png', 5, 'Chiếc lắc tay từ STYLE By PNJ được chế tác từ bạc mang tính ứng dụng cao kết hợp kiểu dáng phá cách. Điều này giúp sản phẩm thổi màu thời thượng và cá tính vào phong cách của các bạn trẻ. Cũng vì tính ứng dụng cao mà hiện nay, bạc đang được đông đảo chị em ưa chuộng.'),
('L03', 'LA', 'Lắc tay Vàng 10K đính đá ECZ PNJ XMXMC000108', 24858000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/130/glxmxmc000108-lac-tay-vang-10k-dinh-da-ecz-pnj-1.png', 2, 'Chiếc lắc tay từ STYLE By PNJ được chế tác từ bạc mang tính ứng dụng cao kết hợp kiểu dáng phá cách. Điều này giúp sản phẩm thổi màu thời thượng và cá tính vào phong cách của các bạn trẻ. Cũng vì tính ứng dụng cao mà hiện nay, bạc đang được đông đảo chị em ưa chuộng.'),
('L04', 'LA', 'Lắc tay Bạc đính đá PNJSilver XMXMW000019', 1975000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/122/slxmxmw000019-lac-tay-bac-dinh-da-pnjsilver-1.png', 1, 'Lắc tay Bạc đính đá PNJSilver XMXMW000019'),
('L05', 'LA', 'Lắc tay Kim cương Vàng trắng 14K PNJ Trịnh Collect', 121654000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/124/glddddw000463-lac-tay-kim-cuong-vang-trang-14k-pnj-1.png', 2, 'Lắc tay Bạc đính đá PNJSilver XMXMW000019'),
('NC01', 'NH', 'Cặp nhẫn cưới Vàng 14K đính đá ECZ PNJ 00005-00013', 10012000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/51/nhan-cuoi-vang-14k-dinh-da-ecz-swarovski-91884-91885.png', 24, 'Nhẫn cưới là kỉ vật tình yêu không thể thiếu trong nghi thức cử hành hôn lễ của các đôi uyên ương. Thông thường, nhẫn cưới được chế tác bằng chất liệu vàng, ngoài việc mang đến vẻ đẹp và giá trị vật chất, vàng còn là biểu tượng của sự son sắt, thủy chung. Cặp nhẫn cưới trong BST Hạnh Phúc Vàng đến từ thương hiệu PNJ sở hữu thiết kế nổi bật, sang trọng kết hợp cùng những viên đá ECZ – Swarovski đính tinh tế trên bề mặt nhẫn nữ đã và đang được nhiều cặp đôi lựa chọn.'),
('NC02', 'NH', 'Cặp nhẫn cưới Kim cương Vàng trắng 14K PNJ Chung Đ', 8900000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/60/nhan-kim-cuong-pnj-chung-doi-vang-trang-14k-wa71532-71533.png', 12, 'Mang sắc vàng tinh tế của chất liệu vàng trắng 14K, cặp nhẫn cưới tạo vẻ nổi bật cho người đeo. Thêm vào đó, chất liệu này luôn sáng đẹp theo thời gian, không bị hao mòn, xước hay méo gẫy. Chiếc nhẫn cưới nằm trong BST Hạnh Phúc Vàng được PNJ thiết kế với kiểu trơn cùng điểm nhấn kim cương sang trọng đính tinh tế trên đai nhẫn, tạo nên sự sang trọng và thời thượng.'),
('NC03', 'NH', 'Cặp nhẫn cưới Kim cương Vàng trắng 14K PNJ Chung Đ', 10900000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/60/nhan-kim-cuong-pnj-chung-doi-vang-trang-14k-wa71532-71533.png', 8, 'Mang sắc vàng tinh tế của chất liệu vàng trắng 14K, cặp nhẫn cưới tạo vẻ nổi bật cho người đeo. Thêm vào đó, chất liệu này luôn sáng đẹp theo thời gian, không bị hao mòn, xước hay méo gẫy. Chiếc nhẫn cưới nằm trong BST Hạnh Phúc Vàng được PNJ thiết kế với kiểu trơn cùng điểm nhấn kim cương sang trọng đính tinh tế trên đai nhẫn, tạo nên sự sang trọng và thời thượng.'),
('NC04', 'NH', 'Cặp nhẫn cưới Kim cương Vàng 18K PNJ Chung Đôi 009', 20693000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/27/gndrya77100.5a0-gndrya77101.5a3-nhan-cuoi-kim-cuong-pnj-vang-18k.png', 2, 'Thu hút bởi kiểu dáng tinh xảo, hài hoà đến từng đường nét, nhẫn cưới \"Chung Đôi\" với thiết kế nhẫn nam và nhẫn nữ đồng nhất đính kèm điểm nhấn kim cương sang trọng, mang đến ấn tượng về sự đồng cảm, sẻ chia. Bên cạnh kim cương, các loại đá quý khác cũng có thể được đính trên nhẫn cưới tạo nên vẻ đẹp sang trọng và đẳng cấp cho sản phẩm.'),
('NC05', 'NH', 'Cặp nhẫn cưới Kim cương Vàng 18K PNJ True Love 004', 20944000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/67/gnddddc000476-gndd00c000552-nhan-cuoi-kim-cuong-vang-18k-pnj-true-love-19-00476-00552.png', 22, 'Nhẫn cưới không chỉ là một tín vật không thể thiếu trong ngày vu quy mà còn là biểu tượng tình yêu của các đôi uyên ương. Sự phát triển và không ngừng sáng tạo của xu hướng thời trang, nhẫn cưới ngày nay được thiết kế với nhiều kiểu dáng hiện đại kết hợp đính kim cương trên mặt nhẫn, mang đến một chút phá cách nhưng không làm mất đi vẻ đẹp truyền thống vốn có.'),
('V01', 'VO', 'Vòng tay Vàng Ý 18K PNJ 0000Z060469', 23290000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/150/gv0000z060469-vong-tay-vang-y-18k-pnj-1.png', 8, 'Chiếc vòng tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.'),
('V02', 'VO', 'Vòng Vàng trắng Ý 18K PNJ 0000W060408', 19290000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/150/gv0000w060408-vong-vang-trang-18k-pnj-1.png', 14, 'Chiếc vòng tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.'),
('V03', 'VO', 'Vòng Vàng 18K PNJ 0000Y060472', 13490000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/150/gv0000y060472-vong-vang-18k-pnj-1.png', 0, 'Chiếc vòng tay PNJ sở hữu sự cứng cáp của vàng 18K kết hợp các chi tiết tinh xảo, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.'),
('V04', 'VO', 'Vòng Vàng 18K PNJ 0000C060042', 9590000, 'https://cdn.pnj.io/images/thumbnails/300/300/detailed/150/gv0000c060042-vong-vang-18k-pnj-1.png', 12, 'Chiếc vòng tay PNJ sở hữu sự cứng cáp của vàng 18K kết hợp các chi tiết tinh xảo, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.'),
('V05', 'VO', 'Vòng tay Vàng trắng Ý 18K PNJ 0000W000521', 32559000, 'https://cdn.pnj.io/images/thumbnails/485/485/detailed/148/gv0000w000521-vong-tay-vang-trang-y-18k-pnj-01.png', 10, 'Chiếc vòng tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `FK__sanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `FK__khachhang` (`makhachhang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpahm`),
  ADD KEY `FK_sanpham_loaisanpham` (`maloai`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK__sanpham` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpahm`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK__khachhang` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sanpham_loaisanpham` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
