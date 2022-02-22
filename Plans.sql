CREATE DATABASE PRJ301_SellingAccountWebsite
GO
USE PRJ301_SellingAccountWebsite
GO
CREATE TABLE Plans(
	ID int NOT NULL PRIMARY KEY,
	Name nvarchar (500) NOT NULL,
	Description nvarchar (500) NOT NULL,
	Price int NOT NULL,
	Url nvarchar (500) NOT NULL,
)
GO
INSERT INTO Plans VALUES ('1', 'Netflix', N'Tài khoản gói UltraHD xem 4K;Có profile riêng, tuỳ biến;Không giới hạn phim', 70000, N'netflix');
GO
INSERT INTO Plans VALUES ('2', 'Spotify Premium', N'Nghe nhạc offline;Chuyển bài không giới hạn;AI gợi ý bài hát', 30000, N'spotify');
GO
INSERT INTO Plans VALUES ('3', 'Youtube Premium', N'Phát nhạc trong nền;Không quảng cáo;Download tất cả video', 50000, N'youtube');
GO
CREATE TABLE Users(
	ID int NOT NULL PRIMARY KEY,
	Username nvarchar (500) NOT NULL,
	Password nvarchar (500) NOT NULL,
	Email nvarchar (500) NOT NULL,
	Phone nvarchar (500) NOT NULL,
	Role int NOT NULL,
)
GO
INSERT INTO Users VALUES (0, 'admin', '123', 'trananh.netflix@gmail.com', '0987654321', 1);
GO
INSERT INTO Users VALUES (1, 'user', '123', 'trananh.netflix@gmail.com', '0987654321', 0);
GO
DROP DATABASE PRJ301_SellingAccountWebsite
DROP TABLE Plans
DROP TABLE Users