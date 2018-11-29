
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `crochet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Len Bernat'),
(2, 'Len Patons'),
(3, 'Len Caron'),
(4, 'Thú len'),
(5, 'Kim đan'),
(6, 'Kim móc'),
(7, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `type`) VALUES
(1, 'Bernat pop màu 1', 130000, '', 1),
(2, 'Bernat pop màu 2', 130000, '', 1),
(3, 'Bernat pop màu 3', 130000, '', 1),
(4, 'Bernat Blanket màu pumkin spice', 250000, '',1),
(5, 'Bernat Blanket màu purple plum', 250000, '',1),
(6, 'Bernat Blanket màu light teal', 250000, '',1),
(7, 'Bernat Blanket màu pumkin spice', 250000, '',1),
(8, 'Patons clasic wool Bulky màu mallard teal', 150000, '',2),
(9, 'Patons clasic wool Bulky màu aran', 150000, '',2),
(10, 'Patons clasic wool Bulky màu bright red', 150000, '',2),
(11, 'Caron simply soft màu Harvest Red', 120000, '',3),
(12, 'Caron simply soft màu bone', 120000, '',3),
(13, 'Caron simply soft màu Blue', 120000, '',3),
(14, 'Caron simply soft màu Soft Green', 120000, '',3),
(15, 'Gấu bí ngô', 750000, '',4),
(16, 'Vua sư tử', 450000, '',4),
(17, 'Gấu trai hame', 420000, '',4),
(18, 'Thỏ trai hame', 420000, '',4),
(19, 'Gấu gái hame', 420000, '',4),
(20, 'Kim đan 2 đầu 5mm Clover', 270000, '',5),
(21, 'Kim đan vặn thừng Daiso', 60000, '',5),
(22, 'Kim đan 3mm Yamto', 210000, '',5),
(23, 'Kim đan 2 đầu 5mm Clover', 270000, '',5),
(24, 'Kim móc 4mm Clover', 200000, '',6),
(25, 'Kim móc Daiso 4mm', 50000, '',6),
(26, 'Bộ kim móc Daiso', 300000, '',6),
(27, 'Mắt thú 13mm', 50000, '',7),
(28, 'Dụng cụ đếm dòng Clover', 160000, '',7),
(29, 'Đánh dấu dòng Daiso', 60000, '',7),
(30, 'Kéo', 230000, '',7),
(31, 'Dụng cụ bịt đầu que đan', 60000, '',7);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;