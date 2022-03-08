DROP DATABASE PRJ301_SellingAccountWebsite
GO
DROP TABLE Billings
GO
DROP TABLE Accounts
GO
DROP TABLE Users
GO
DROP TABLE Plans
GO
CREATE DATABASE PRJ301_SellingAccountWebsite
GO
USE PRJ301_SellingAccountWebsite
GO
CREATE TABLE Plans(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar (500) NOT NULL,
	Description nvarchar (500) NOT NULL,
	Price int NOT NULL,
	Url nvarchar (500) NOT NULL,
	Capacity int NOT NULL,
)
GO
INSERT INTO Plans VALUES ('Netflix', N'Tài khoản gói UltraHD xem 4K;Có profile riêng, tuỳ biến;Không giới hạn phim', 70000, N'netflix', 5);
GO
INSERT INTO Plans VALUES ('Spotify Premium', N'Nghe nhạc offline;Chuyển bài không giới hạn;AI gợi ý bài hát', 30000, N'spotify', 6);
GO
INSERT INTO Plans VALUES ('Youtube Premium', N'Phát nhạc trong nền;Không quảng cáo;Download tất cả video', 50000, N'youtube', 6);
GO
CREATE TABLE Users(
	Username nvarchar (500) NOT NULL PRIMARY KEY,
	Password nvarchar (500) NOT NULL,
	Email nvarchar (500) NOT NULL,
	Phone nvarchar (500) NOT NULL,
	Role int NOT NULL,
)
GO
INSERT INTO Users VALUES ('admin', '123', 'trananh.netflix@gmail.com', '0987654321', 0);
INSERT INTO Users VALUES ('user', '123', 'trananh.netflix@gmail.com', '0987654321', 1);
insert into Users values ('pacedo0', 'sRcaWL9', 'lherety0@gmpg.org', '2003864689', 1);
insert into Users values ('acomino1', 'R2fJNc7x', 'apinks1@who.int', '3432973835', 1);
insert into Users values ('mswanger2', 'KiRfbRGloh', 'alorentzen2@squidoo.com', '5227494236', 1);
insert into Users values ('rbowkett3', 'VF5M52pn', 'flinnemann3@163.com', '2467039747', 1);
insert into Users values ('amedling4', 'zf5htFYYGErF', 'jrogliero4@altervista.org', '6894481695', 1);
insert into Users values ('jturfrey6', 'ntgsbx', 'lbunney6@geocities.com', '2325824311', 1);
insert into Users values ('mmcarte7', 'b543JhhK5x6', 'jlittleproud7@themeforest.net', '1789311117', 1);
insert into Users values ('agregolotti8', 'CRcErX', 'mroseaman8@timesonline.co.uk', '1677809506', 1);
insert into Users values ('clandre9', 'C6dGSw3JR', 'lorans9@google.co.uk', '8372717098', 1);
insert into Users values ('abrigshawa', 'CM5YoHQ', 'ledgingtona@usa.gov', '4684782896', 1);
insert into Users values ('mkaliszb', 'ApgQa66', 'msruttonb@comcast.net', '6246323377', 1);
insert into Users values ('hbartunekc', 'B3QdEBZ', 'amcteggartc@wikipedia.org', '8523333825', 1);
insert into Users values ('acervantesd', 'FyywKlcAWAPI', 'fmaggiored@slideshare.net', '7728864491', 1);
insert into Users values ('sbowne', 'alTwlncoJrR', 'cdavye@macromedia.com', '4437504831', 1);
insert into Users values ('sbedinf', 'ZQR1vDg', 'rbomanf@cornell.edu', '1846220291', 1);
insert into Users values ('ctoderbruggeg', '709ViGOzlc', 'esummersideg@bandcamp.com', '7112887306', 1);
insert into Users values ('ptallonh', 'jNwp8n7', 'cortzenh@sourceforge.net', '7553835251', 1);
insert into Users values ('mbarouxi', 'dYrGHkBDG', 'aturbardi@smh.com.au', '9461266223', 1);
insert into Users values ('fbartenj', 'COXWiyaC', 'dbreckellj@tripod.com', '7581471536', 1);
insert into Users values ('stuftinl', 'ZZ0rhG', 'greddickl@sun.com', '9831117154', 1);
insert into Users values ('oeschalettem', 'RPI3SH9zA', 'svaulsm@wordpress.org', '5264288865', 1);
insert into Users values ('lmaccorkelln', 'va69AObQA6', 'ccasinan@csmonitor.com', '3189655692', 1);
insert into Users values ('pmogeyo', 'CvxeZ21', 'jballacho@cam.ac.uk', '9545529742', 1);
insert into Users values ('ofumagallip', 'lMvupUw', 'eshirleyp@uol.com.br', '6186002972', 1);
insert into Users values ('gwinmanq', '6usGWM6X', 'mpoulgreenq@state.tx.us', '8426741851', 1);
insert into Users values ('lmeritr', 'gtT7LVpb7', 'fgainsboroughr@goodreads.com', '2439544873', 1);
insert into Users values ('bcrankhorns', 'BTLLUjS8', 'rblyths@51.la', '2325488293', 1);
insert into Users values ('efairbankt', 'MGRjkrKKo', 'wivict@php.net', '1312877279', 1);
insert into Users values ('mstonebanksu', '3A3pUtTSt04', 'gcrathernu@pbs.org', '1457468122', 1);
insert into Users values ('gattridev', '5wFPTwssiJoa', 'bculchethv@google.fr', '2642004940', 1);
insert into Users values ('csagew', '386rkjpMjh', 'bespadaterw@gizmodo.com', '5976940328', 1);
insert into Users values ('anemchinovx', '0yXCXOoEh', 'pnotleyx@java.com', '3486579663', 1);
insert into Users values ('jminkiny', 'YS1xAdh', 'bcoplestoney@webnode.com', '4365648761', 1);
insert into Users values ('lmuzziniz', 'Oc3Yen2e7HM7', 'lfidlerz@google.pl', '9857434122', 1);
insert into Users values ('hdarree11', 'jWxF21De', 'lmartensen11@ucsd.edu', '4491232947', 1);
insert into Users values ('dmaus12', '80hBPQ2SuD5y', 'onerney12@uol.com.br', '3438939373', 1);
insert into Users values ('lklisch13', 'bqgpit', 'bprator13@arstechnica.com', '8633226436', 1);
insert into Users values ('jvonderdell14', 'S5QajAXQ', 'dfelten14@upenn.edu', '9094164307', 1);
insert into Users values ('rdansken15', 'bPznKxYY', 'katwater15@ibm.com', '1064954264', 1);
GO
create table Accounts (
	ID int IDENTITY(1,1) PRIMARY KEY,
	PlanID INT NOT NULL,
	account nvarchar(500),
	password nvarchar(500),
	date DATE,
	Status int,
	currentUsers INT,
	FOREIGN KEY (PlanID) REFERENCES Plans(ID)
)
GO
insert into Accounts values ( 1, 'jbuckner0@earthlink.net', '3abv1oupe', '8/16/2021', 1, 3);
insert into Accounts values ( 1, 'bkingcott1@stumbleupon.com', 'Ohmto3FI5j', '10/1/2020', 0, 2);
insert into Accounts values ( 3, 'playtham2@wix.com', 'z9SuB5xbKo', '2/28/2022', 1, 1);
insert into Accounts values ( 3, 'tklessmann3@ning.com', 'BYUpIS', '8/31/2020', 1, 2);
insert into Accounts values ( 3, 'lbeagles4@webnode.com', 'tEVrTQ', '9/6/2020', 0, 3);
insert into Accounts values ( 3, 'dmaclardie5@sina.com.cn', 'B9oCThz', '9/27/2020', 1, 2);
insert into Accounts values ( 2, 'islatford6@icq.com', 'vdvkGeRTLXC', '5/21/2021', 1, 4);
insert into Accounts values ( 1, 'jjeeks7@cafepress.com', '2dPrKi0', '3/3/2022', 0, 2);
insert into Accounts values ( 1, 'mgilli8@webs.com', 'm8YbnZq3', '4/10/2021', 1, 5);
insert into Accounts values ( 3, 'tpulbrook9@oaic.gov.au', 'fLA9Nsx', '5/22/2021', 1, 2);
insert into Accounts values ( 1, 'spattiea@gnu.org', 'rPqGiMFmDYeg', '10/29/2020', 1, 3);
insert into Accounts values ( 3, 'lmingaudb@symantec.com', 'fsO3CnG', '3/21/2021', 0, 2);
insert into Accounts values ( 1, 'sinkpinc@pbs.org', '4vI4E1J2B1r', '9/18/2021', 0, 3);
insert into Accounts values ( 2, 'jseverd@exblog.jp', 'E1rJmPX99', '12/29/2021', 1, 3);
insert into Accounts values ( 1, 'dberrymane@utexas.edu', 'QyvSlA6i', '7/5/2021', 0, 4);
insert into Accounts values ( 3, 'pgrushinf@comcast.net', 'fCvaJeORvy', '7/26/2020', 0, 5);
insert into Accounts values ( 2, 'mbradneckg@patch.com', 'bf4D9WJeNc', '1/27/2021', 0, 2);
insert into Accounts values ( 2, 'hsowoodh@booking.com', 'JWhQ00zkOEAb', '7/27/2021', 0, 5);
insert into Accounts values ( 3, 'tharnetti@pagesperso-orange.fr', 'eg29uxL1', '11/19/2020', 0, 4);
insert into Accounts values ( 1, 'dmacalasterj@oakley.com', 'Sp000ENpO', '10/10/2020', 0, 2);
insert into Accounts values ( 2, 'jlethburyk@ehow.com', '9Wq9kojt', '6/9/2021', 1, 4);
insert into Accounts values ( 3, 'ecaldowl@photobucket.com', 'T4iLqRghoc6', '8/24/2020', 0, 2);
insert into Accounts values ( 3, 'gmcknielym@cloudflare.com', '7zrzYj', '5/30/2021', 1, 2);
insert into Accounts values ( 3, 'ekopelmann@paginegialle.it', 'qfUz617H0', '2/21/2022', 0, 2);
insert into Accounts values ( 3, 'cruprechto@cnbc.com', 'bDJ1hQmgo', '3/12/2021', 1, 5);
insert into Accounts values ( 2, 'jclokep@scientificamerican.com', 'eD8QpwrQA', '6/30/2020', 0, 4);
insert into Accounts values ( 1, 'mlaslettq@odnoklassniki.ru', 'j9YafL4x', '8/15/2021', 0, 4);
insert into Accounts values ( 3, 'gdugor@cornell.edu', 'YzviRlS2aU', '12/15/2021', 0, 5);
insert into Accounts values ( 1, 'ggalilees@google.fr', 'VL46BwNsV9', '12/16/2020', 0, 2);
insert into Accounts values ( 3, 'kottert@noaa.gov', 'XmGXUYbZ3s8', '12/28/2021', 0, 2);
insert into Accounts values ( 1, 'dmaxtedu@cam.ac.uk', 'TjoKN8Pt', '11/7/2020', 1, 1);
insert into Accounts values ( 3, 'nmcdirmidv@wunderground.com', 'QYiFTxIX2', '9/20/2021', 0, 2);
insert into Accounts values ( 3, 'aosirinw@webeden.co.uk', 'y5TLJLjCN3u', '10/17/2020', 0, 4);
insert into Accounts values ( 2, 'fbrassingtonx@plala.or.jp', 'l47sG3Jmtr', '9/4/2021', 0, 5);
insert into Accounts values ( 2, 'kcaisleyy@addthis.com', 'HLZx8F3U5aSZ', '3/9/2021', 0, 2);
insert into Accounts values ( 3, 'gpizzeyz@joomla.org', 'X0P09sztYXh', '6/15/2020', 0, 5);
insert into Accounts values ( 1, 'tpinyon10@github.io', 'Gf9CTbM4uop', '9/18/2021', 1, 5);
insert into Accounts values ( 2, 'pgossipin11@wiley.com', '9NxRj9s8', '7/10/2021', 0, 4);
insert into Accounts values ( 1, 'mgrinaugh12@geocities.jp', 'fA78mz', '5/7/2021', 0, 5);
insert into Accounts values ( 1, 'cwybourne13@pbs.org', 'zgwNMs', '9/1/2021', 0, 2);
insert into Accounts values ( 3, 'cwallis14@ameblo.jp', 'Lui3bO7E2y', '8/10/2020', 0, 2);
insert into Accounts values ( 2, 'aburnep15@stumbleupon.com', 'Lf8hTHx7m', '2/23/2022', 1, 1);
insert into Accounts values ( 3, 'bfisbey16@google.com.au', 'aF4WTtHBHaF', '9/18/2020', 0, 3);
insert into Accounts values ( 3, 'sdambrosio17@cnet.com', 'pS6ihkVx7', '9/13/2020', 0, 2);
insert into Accounts values ( 2, 'framalhete18@homestead.com', 'br0LL3tU', '12/11/2021', 1, 1);
insert into Accounts values ( 3, 'ngerrelt19@go.com', 'YPxZ9D', '6/29/2020', 1, 1);
insert into Accounts values ( 3, 'fkentwell1a@gravatar.com', '8UWoLF50c1s', '1/8/2022', 0, 5);
insert into Accounts values ( 2, 'cpeople1b@wiley.com', 'v86yZ8NpNWM', '10/4/2020', 0, 3);
insert into Accounts values ( 3, 'omyrtle1c@acquirethisname.com', 'ioGjub', '1/11/2022', 1, 1);
insert into Accounts values ( 1, 'gfransson1d@github.io', 'MJYbLu', '9/19/2020', 1, 4);
insert into Accounts values ( 2, 'bohartnedy1e@i2i.jp', 'jMRdFB8mvQ', '9/20/2021', 1, 1);
insert into Accounts values ( 3, 'qconduit1f@comcast.net', 'AQkQxTPxa', '2/15/2021', 1, 4);
insert into Accounts values ( 3, 'jbeeken1g@tuttocitta.it', 'gOqz8hq9', '1/20/2021', 0, 5);
insert into Accounts values ( 2, 'wbyres1h@ucla.edu', '108OTjVX', '3/13/2021', 0, 4);
insert into Accounts values ( 3, 'gedgerley1i@dropbox.com', '9HPHLN', '10/10/2020', 1, 5);
insert into Accounts values ( 3, 'mreame1j@booking.com', 'mjx9aOCDYF', '9/10/2020', 0, 4);
insert into Accounts values ( 1, 'bfitchell1k@xing.com', 'Col7pDaH', '9/23/2021', 0, 2);
insert into Accounts values ( 3, 'eweatherall1l@fastcompany.com', 'tseUDEPK', '8/21/2020', 1, 1);
insert into Accounts values ( 3, 'medgcombe1m@vinaora.com', 'Ug3iHU2D', '12/30/2020', 1, 5);
insert into Accounts values ( 3, 'vdewitt1n@slate.com', 'yDm5D0qpI', '8/10/2020', 1, 1);
insert into Accounts values ( 3, 'lhanway1o@nps.gov', '5TMNMfPG', '6/3/2021', 0, 5);
insert into Accounts values ( 1, 'wgregoretti1p@yolasite.com', 'RdAhWSYdEJlb', '7/30/2020', 0, 3);
insert into Accounts values ( 2, 'aworsham1q@tamu.edu', 'f8JSEw5z6Zl', '3/12/2021', 0, 5);
insert into Accounts values ( 1, 'adonneely1r@tumblr.com', 'abRZ1DNPwuuL', '10/28/2020', 1, 1);
insert into Accounts values ( 2, 'lruppeli1s@cargocollective.com', 'iB8hsAhl', '8/22/2021', 1, 5);
insert into Accounts values ( 1, 'salpes1t@un.org', 'w1VeJSZLIR', '5/23/2021', 1, 2);
insert into Accounts values ( 1, 'eoakland1u@1und1.de', 'y8Hch3', '1/17/2021', 1, 4);
insert into Accounts values ( 1, 'fmccaughen1v@psu.edu', 'NwVW1WMG4L', '12/20/2020', 0, 4);
insert into Accounts values ( 3, 'fcollinson1w@scientificamerican.com', 'Ydc6qE', '2/9/2022', 0, 1);
insert into Accounts values ( 1, 'istallan1x@mozilla.org', 'urOOYMcXS', '10/5/2020', 1, 5);
insert into Accounts values ( 1, 'vgarroch1y@theatlantic.com', 'sCGXdqdG', '1/3/2022', 0, 3);
insert into Accounts values ( 3, 'fodunniom1z@nbcnews.com', '7Qj4kO9Z', '2/14/2022', 1, 4);
insert into Accounts values ( 3, 'lfull20@istockphoto.com', 'mlo5M277rRM4', '9/11/2021', 1, 4);
insert into Accounts values ( 1, 'vnarracott21@zimbio.com', '244FVcV8f', '8/16/2020', 1, 2);
insert into Accounts values ( 2, 'gmacrory22@edublogs.org', 'xSuqQ6Pd3Piz', '7/16/2021', 0, 3);
insert into Accounts values ( 1, 'sferier23@blog.com', 'YlvPKAqn9', '12/30/2021', 1, 4);
insert into Accounts values ( 3, 'wfarris24@mac.com', 'jcUcuif', '6/6/2021', 0, 1);
insert into Accounts values ( 3, 'tlampet25@4shared.com', 'jDMMjL', '7/2/2021', 1, 5);
insert into Accounts values ( 2, 'mmustin26@usda.gov', 'LdIjbJgqdchm', '10/17/2021', 1, 5);
insert into Accounts values ( 3, 'dinman27@fda.gov', 'UmUxzQjG1', '11/14/2021', 0, 5);
insert into Accounts values ( 1, 'ndyson28@weebly.com', 'yzTDcs7', '9/25/2020', 1, 5);
insert into Accounts values ( 1, 'vrivalland29@accuweather.com', '64DP40gbwC', '7/11/2020', 0, 5);
insert into Accounts values ( 3, 'frotherforth2a@engadget.com', 'S7qUrZQw', '6/29/2020', 0, 3);
insert into Accounts values ( 3, 'gfayers2b@toplist.cz', 'R9PQ17u', '2/12/2022', 0, 3);
insert into Accounts values ( 3, 'rhardan2c@nymag.com', 'QtBbUSQh', '12/5/2020', 0, 2);
insert into Accounts values ( 1, 'bleteurtre2d@google.com.au', 'K08nEmQv7', '12/12/2020', 0, 3);
insert into Accounts values ( 2, 'istoller2e@ucoz.com', 'Rpzhg9E9LWX', '8/23/2021', 0, 2);
insert into Accounts values ( 2, 'ajoyson2f@opera.com', 'Qp4MNV2', '2/17/2021', 1, 5);
insert into Accounts values ( 2, 'igwynne2g@pcworld.com', 'zY6pT0lZ', '8/20/2020', 1, 3);
insert into Accounts values ( 1, 'cpeekevout2h@gnu.org', '146ogMDIz', '6/14/2020', 0, 1);
insert into Accounts values ( 3, 'iblackham2i@addtoany.com', 'NblSvM5z', '2/18/2022', 1, 1);
insert into Accounts values ( 2, 'slindro2j@google.ru', 'CSXncCJ', '4/27/2021', 0, 4);
insert into Accounts values ( 2, 'msymon2k@archive.org', 'UYVUifW9YCE', '2/26/2021', 0, 2);
insert into Accounts values ( 3, 'iredwall2l@mayoclinic.com', 'tNCZCj23h9', '1/24/2022', 1, 5);
insert into Accounts values ( 1, 'jcreddon2m@ning.com', 'F1EpnXGRhY0q', '2/23/2021', 0, 4);
insert into Accounts values ( 2, 'gtomkys2n@cargocollective.com', 'Zx5ZLAT', '1/23/2022', 0, 3);
insert into Accounts values ( 3, 'ahardwich2o@sbwire.com', 'JL6olvkQR2hY', '6/29/2020', 0, 3);
insert into Accounts values ( 2, 'esarl2p@tripadvisor.com', 'pUshAy', '1/31/2022', 0, 2);
insert into Accounts values ( 3, 'jinns2q@time.com', 'IZTRqze', '4/26/2021', 1, 5);
insert into Accounts values ( 1, 'mhaysham2r@cornell.edu', 'iCdTfhD', '11/29/2021', 1, 4);
GO
CREATE TABLE Billings(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Username nvarchar (500) NOT NULL,
	PlanID int NOT NULL,
	AccountID int NOT NULL,
	Date date NOT NULL,
	Duration int NOT NULL,
	Price int NOT NULL,
	FOREIGN KEY (Username) REFERENCES Users(Username),
	FOREIGN KEY (PlanID) REFERENCES Plans(ID),
	FOREIGN KEY (AccountID) REFERENCES Accounts(ID)
)

GO
insert into Billings values ( 'plillyman2r',		3, 1, '12/22/2021', 12, 840);
insert into Billings values ( 'emcallester2p',	3, 1, '3/14/2021', 11, 770);
insert into Billings values ( 'ratcheson2l',		1, 3, '11/15/2021', 3, 210);
insert into Billings values ( 'pcarlill2k',		1, 4, '7/3/2020'	, 1, 70);
insert into Billings values ( 'dtonnesen2h',		3, 4, '6/28/2020', 1, 70);
insert into Billings values ( 'thazlewood2g',		3, 2, '1/17/2022', 3, 210);
insert into Billings values ( 'bcrankhorns',			 3, 40, '7/26/2020', 1, 70);
insert into Billings values ( 'efairbankt',			 1, 66, '11/1/2020', 8, 70);
insert into Billings values ( 'mstonebanksu',			 2, 69, '9/26/2021', 10, 70);
insert into Billings values ( 'gattridev',			 3, 11, '12/9/2020', 7, 70);
insert into Billings values ( 'anemchinovx',			 3, 68, '1/12/2022', 6, 70);
insert into Billings values ( 'csagew',			 1,81, '10/29/2021', 8, 70);
insert into Billings values ( 'jminkiny',			 1, 64, '8/20/2020', 8, 70);
insert into Billings values ( 'lmuzziniz',			 3, 1, '3/7/2021', 8, 70);
insert into Billings values ( 'mlewty10',			 1, 81, '8/25/2021', 3, 70);
insert into Billings values ( 'hdarree11',			 3, 27, '6/17/2021', 7, 70);
insert into Billings values ( 'dmaus12',			 3, 10, '1/13/2022', 12, 70);
insert into Billings values ( 'lklisch13',			 2, 19, '9/25/2021', 8, 70);
insert into Billings values ( 'jvonderdell14',			 2, 42, '6/19/2021', 5, 70);
insert into Billings values ( 'rdansken15',			 3, 11, '3/13/2021', 3, 70);
insert into Billings values ( 'cferrolli16',			 1, 11, '3/22/2021', 4, 70);
insert into Billings values ( 'lsagg17',			 2, 35, '8/10/2021', 2, 70);
insert into Billings values ( 'igoscar18',			 3, 12, '7/25/2021', 8, 70);

GO
select * from Accounts

select ID from Accounts where account = '8867219985@gmail.com'