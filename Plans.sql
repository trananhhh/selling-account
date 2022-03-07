DROP DATABASE PRJ301_SellingAccountWebsite
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
INSERT INTO Plans VALUES ('1', 'Netflix', N'Tài khoản gói UltraHD xem 4K;Có profile riêng, tuỳ biến;Không giới hạn phim', 70000, N'netflix', 5);
GO
INSERT INTO Plans VALUES ('2', 'Spotify Premium', N'Nghe nhạc offline;Chuyển bài không giới hạn;AI gợi ý bài hát', 30000, N'spotify', 6);
GO
INSERT INTO Plans VALUES ('3', 'Youtube Premium', N'Phát nhạc trong nền;Không quảng cáo;Download tất cả video', 50000, N'youtube', 6);
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
insert into Users values ('nvolant5', 'TgJ8xlvNY', 'uwozencroft5@networkadvertising.org', '5384883074', 1);
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
insert into Users values ('mlaurenzk', 'mPKhjhRTM', 'gpoulsumk@scientificamerican.com', '4256473282', 1);
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
insert into Users values ('mlewty10', 'FCZEgoU7Ec2', 'ckhrishtafovich10@samsung.com', '4941430053', 1);
insert into Users values ('hdarree11', 'jWxF21De', 'lmartensen11@ucsd.edu', '4491232947', 1);
insert into Users values ('dmaus12', '80hBPQ2SuD5y', 'onerney12@uol.com.br', '3438939373', 1);
insert into Users values ('lklisch13', 'bqgpit', 'bprator13@arstechnica.com', '8633226436', 1);
insert into Users values ('jvonderdell14', 'S5QajAXQ', 'dfelten14@upenn.edu', '9094164307', 1);
insert into Users values ('rdansken15', 'bPznKxYY', 'katwater15@ibm.com', '1064954264', 1);
insert into Users values ('cferrolli16', '0TAN7sqNR', 'ehoogendorp16@nsw.gov.au', '2912849537', 1);
insert into Users values ('lsagg17', 'cHhZ2x', 'eantos17@microsoft.com', '8644180799', 1);
insert into Users values ('igoscar18', 'jIQwoOf', 'mboissier18@umn.edu', '5539229740', 1);
insert into Users values ('hdomm19', 'xaA7YfDRoL', 'kprandy19@taobao.com', '5752878529', 1);
insert into Users values ('ldovermann1a', 'KcA1dv6nFt4w', 'slisamore1a@cbsnews.com', '1679010359', 1);
insert into Users values ('lstithe1b', 'xRs8m9', 'rdanilov1b@sakura.ne.jp', '3135419724', 1);
insert into Users values ('llargen1c', 'gV3tE7I', 'hcolgrave1c@cloudflare.com', '4236643002', 1);
insert into Users values ('ckirstein1d', 'bnATyY0', 'cmussotti1d@surveymonkey.com', '1554712721', 1);
insert into Users values ('pmccauley1e', 'sAU50GLjO', 'criep1e@thetimes.co.uk', '8027434512', 1);
insert into Users values ('mdumberrill1f', 'EbQo6YrM9', 'tmctrustam1f@ca.gov', '8696613085', 1);
insert into Users values ('bdaid1g', 'A0orJDZ7Jcwy', 'cleathe1g@prlog.org', '7658199544', 1);
insert into Users values ('cvasovic1h', 's3FZClw1hxVW', 'lwissby1h@github.com', '5263595250', 1);
insert into Users values ('jbestwick1i', 'WwIVXE', 'bwadeling1i@eventbrite.com', '6113266161', 1);
insert into Users values ('mlage1j', 'oGXFp2BvrJ', 'cching1j@uol.com.br', '1228768478', 1);
insert into Users values ('tcornejo1k', 'qq57Afk', 'aablott1k@wsj.com', '2706936716', 1);
insert into Users values ('rlambillion1l', 'QMrcq8V5oi', 'vmolineux1l@infoseek.co.jp', '3364865611', 1);
insert into Users values ('dhollindale1m', 'DEN8pg4o', 'ksimoneau1m@cyberchimps.com', '9537613832', 1);
insert into Users values ('tkarpov1n', '2nO1W1Kq', 'ugibberd1n@aol.com', '2796230664', 1);
insert into Users values ('kgillbard1o', '7L2qCnH3h', 'rpoulston1o@hatena.ne.jp', '8086919172', 1);
insert into Users values ('cpegler1p', 'GE0STTHg', 'amcsperrin1p@elegantthemes.com', '4798066913', 1);
insert into Users values ('abrydie1q', '1VX5SCEux', 'jfinlan1q@google.com.au', '5212875556', 1);
insert into Users values ('mgridley1r', 'eI1gnPCuR6', 'dairey1r@arstechnica.com', '4496337321', 1);
insert into Users values ('ddoerr1s', 'HCAXLnxXLF', 'cdugan1s@phpbb.com', '8934908247', 1);
insert into Users values ('rgarbutt1t', 'DtOomN3hb8W', 'briteley1t@chronoengine.com', '4023195673', 1);
insert into Users values ('aamaya1u', 'gwyDQXtBYkb2', 'efleischer1u@ucoz.com', '7497337363', 1);
insert into Users values ('pcometto1v', '0BESsQ', 'clemary1v@storify.com', '4445491281', 1);
insert into Users values ('dcornehl1w', 'RvgpJdF3uW', 'fhassan1w@ox.ac.uk', '7689678417', 1);
insert into Users values ('lfeenan1x', 'uPLc8lvO', 'tsimkiss1x@yahoo.com', '8425913910', 1);
insert into Users values ('msignoret1y', 'c32vJJTkluS', 'ohallgalley1y@businessweek.com', '8972051701', 1);
insert into Users values ('bgallamore1z', 'Ohxf9V', 'mstclair1z@studiopress.com', '8585312766', 1);
insert into Users values ('cbryan20', 'gpPjd67i', 'mbrakespear20@free.fr', '4027145619', 1);
insert into Users values ('kbarts21', 'X9efMU7', 'remslie21@loc.gov', '1027268352', 1);
insert into Users values ('bwheeler22', 'Fx8jNvzybr9', 'dbiasetti22@rediff.com', '5168793508', 1);
insert into Users values ('nzold23', 'cf9MjVxkQb', 'pbraidford23@symantec.com', '2191972295', 1);
insert into Users values ('lhele24', '0R1qe6OJs', 'kcretney24@diigo.com', '3168664215', 1);
insert into Users values ('kgoulbourn25', 'jlU7gW7S', 'bpaoletto25@wikispaces.com', '1689648494', 1);
insert into Users values ('gwestrey26', 'nqLZRQ', 'lreilinger26@lycos.com', '6898955549', 1);
insert into Users values ('llewton27', '7DV2Oi', 'bdowears27@tripod.com', '8778009617', 1);
insert into Users values ('avolette28', 'y2Tapk7P2T', 'cedgehill28@friendfeed.com', '1296334471', 1);
insert into Users values ('schallen29', 'STlsOlIvOnDF', 'bmcduffy29@squidoo.com', '8628630158', 1);
insert into Users values ('ujuares2a', 'wN5UI4kximY', 'jvasilic2a@ow.ly', '5874739854', 1);
insert into Users values ('dharrington2b', 'esaez1', 'mheigl2b@sfgate.com', '9616704304', 1);
insert into Users values ('bdillicate2c', 'Fi8Er6B4gLgz', 'lhowsan2c@chicagotribune.com', '1661900077', 1);
insert into Users values ('jgrendon2d', 'IkQT7zKsTpow', 'hlacroix2d@ycombinator.com', '1608665136', 1);
insert into Users values ('gshipman2e', 'HTDmS3l2S64b', 'aspaxman2e@cbsnews.com', '6198350630', 1);
insert into Users values ('bkrishtopaittis2f', '5S4ulSk', 'mhabbert2f@hao123.com', '1732701154', 1);
insert into Users values ('thazlewood2g', 'olGZVC', 'acarrel2g@illinois.edu', '5624140913', 1);
insert into Users values ('dtonnesen2h', 'tA8XWRj', 'jshave2h@histats.com', '3076253635', 1);
insert into Users values ('bbarfoot2i', 'L8CvbeczUp', 'ptorra2i@multiply.com', '9377150602', 1);
insert into Users values ('alinskey2j', 'jytmM99MKa', 'nwillshear2j@phoca.cz', '6845131079', 1);
insert into Users values ('pcarlill2k', 'CfyBt2dL5Y', 'gcamelli2k@issuu.com', '1158328264', 1);
insert into Users values ('ratcheson2l', 'QHEAa5v6Jv7', 'mscholig2l@163.com', '2554467534', 1);
insert into Users values ('rverdon2m', 'Tx7FdsXh4wm', 'mshakesby2m@weebly.com', '9606840157', 1);
insert into Users values ('tvoff2n', 'sCqLoMxF', 'tazam2n@pen.io', '8535000409', 1);
insert into Users values ('ewolfe2o', 'NRJ63n', 'khammatt2o@digg.com', '3007915406', 1);
insert into Users values ('emcallester2p', 'DSR144P3Uzw0', 'emacguire2p@ameblo.jp', '4913924202', 1);
insert into Users values ('rprendeville2q', 'fdub5lQtke7y', 'wspeaks2q@census.gov', '9382729942', 1);
insert into Users values ('plillyman2r', 'vP6t2m49y', 'ctownshend2r@imgur.com', '9236549966', 1);
GO
CREATE TABLE Billings(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Username nvarchar (500) NOT NULL,
	PlanID int NOT NULL,
	AccountID int NOT NULL,
	Date date NOT NULL,
	Duration int NOT NULL,
	Price int NOT NULL,
)

GO
insert into Billings values (1, 'plillyman2r',		3, 1, '12/22/2021', 12, 840);
insert into Billings values (2, 'emcallester2p',	3, 1, '3/14/2021', 11, 770);
insert into Billings values (3, 'ratcheson2l',		1, 3, '11/15/2021', 3, 210);
insert into Billings values (4, 'pcarlill2k',		1, 4, '7/3/2020'	, 1, 70);
insert into Billings values (5, 'dtonnesen2h',		3, 4, '6/28/2020', 1, 70);
insert into Billings values (6, 'thazlewood2g',		3, 2, '1/17/2022', 3, 210);
insert into Billings values (7, 'Roseanne',			 3, 40, '7/26/2020', 1, 70);
insert into Billings values (8, 'Teodoro',			 1, 66, '11/1/2020', 8, 70);
insert into Billings values (9, 'Ransom',			 2, 69, '9/26/2021', 10, 70);
insert into Billings values (10, 'Janith',			 3, 11, '12/9/2020', 7, 70);
insert into Billings values (11, 'Riordan',			 3, 68, '1/12/2022', 6, 70);
insert into Billings values (12, 'Leland',			 1,81, '10/29/2021', 8, 70);
insert into Billings values (13, 'Sonnnie',			 1, 64, '8/20/2020', 8, 70);
insert into Billings values (14, 'Jena',			 3, 1, '3/7/2021', 8, 70);
insert into Billings values (15, 'Erik',			 1, 81, '8/25/2021', 3, 70);
insert into Billings values (16, 'Garvy',			 3, 27, '6/17/2021', 7, 70);
insert into Billings values (17, 'Odette',			 3, 10, '1/13/2022', 12, 70);
insert into Billings values (18, 'Annora',			 2, 19, '9/25/2021', 8, 70);
insert into Billings values (19, 'Goldy',			 2, 42, '6/19/2021', 5, 70);
insert into Billings values (20, 'Ethe',			 3, 11, '3/13/2021', 3, 70);
insert into Billings values (21, 'Elwyn',			 1, 11, '3/22/2021', 4, 70);
insert into Billings values (22, 'Waneta',			 2, 35, '8/10/2021', 2, 70);
insert into Billings values (23, 'Adolph',			 3, 12, '7/25/2021', 8, 70);
insert into Billings values (24, 'Milo',			 2, 90, '7/29/2021', 12, 70);
insert into Billings values (25, 'Muire',			 2, 59, '2/11/2022', 8, 70);
insert into Billings values (26, 'Scotty',			 2, 14, '11/29/2021', 12, 70);
insert into Billings values (27, 'Sabine',			 3, 63, '3/20/2021', 2, 70);
insert into Billings values (28, 'Brianna',			 2, 54, '11/8/2021', 1, 70);
insert into Billings values (29, 'Izabel',			 2, 10, '11/12/2021', 1, 70);
insert into Billings values (30, 'Filippo',			 2, 41, '1/11/2021', 11, 70);
insert into Billings values (31, 'Roana',			 3, 72, '11/23/2020', 11, 70);
insert into Billings values (32, 'Bradney',			 2, 77, '6/6/2021', 12, 70);
insert into Billings values (33, 'Cheri',			 1, 68, '5/1/2021', 4, 70);
insert into Billings values (34, 'Bella',			 1, 32, '5/18/2020', 8, 70);
insert into Billings values (35, 'Care',			 3, 19, '4/23/2021', 8, 70);
insert into Billings values (36, 'Tiff',			 1, 12, '9/19/2021', 7, 70);
insert into Billings values (37, 'Kendal',			 2, 18, '12/12/2021', 6, 70);
insert into Billings values (38, 'Estele',			 2, 67, '8/20/2020', 3, 70);
insert into Billings values (39, 'Christiano',			 3, 17, '9/14/2021', 4, 70);
insert into Billings values (40, 'Kevin',			 3, 12, '10/21/2020', 1, 70);
insert into Billings values (41, 'Pat',			 3, 43, '5/22/2020', 3, 70);
insert into Billings values (42, 'Thane',			 1, 65, '7/24/2020', 9, 70);
insert into Billings values (43, 'Britte',			 3, 26, '7/11/2020', 11, 70);
insert into Billings values (44, 'Zarah',			 1, 84, '6/21/2021', 2, 70);
insert into Billings values (45, 'Thacher',			 2, 41, '6/20/2020', 10, 70);
insert into Billings values (46, 'Gardiner',			 3, 94, '8/6/2020', 1, 70);
insert into Billings values (47, 'Denny',			 2, 26, '7/6/2021', 6, 70);
insert into Billings values (48, 'Florence',			 1, 13, '6/29/2021', 3, 70);
insert into Billings values (49, 'Leslie',			 1, 82, '9/25/2020', 7, 70);
insert into Billings values (50, 'Paxton',			 3, 30, '2/19/2021', 6, 70);
insert into Billings values (51, 'Coretta',			 2, 34, '6/23/2020', 8, 70);
insert into Billings values (52, 'Jana',			 1, 44, '4/3/2021', 3, 70);
insert into Billings values (53, 'Chickie',			 1, 3, '3/8/2021', 11, 70);
insert into Billings values (54, 'Benton',			 1, 98, '5/3/2021', 11, 70);
insert into Billings values (55, 'Joelly',			 3, 62, '9/11/2020', 9, 70);
insert into Billings values (56, 'Antonin',			 2, 63, '10/28/2021', 12, 70);
insert into Billings values (57, 'Noell',			 1, 32, '2/28/2021', 2, 70);
insert into Billings values (58, 'Dion',			 2, 72, '9/1/2020', 12, 70);
insert into Billings values (59, 'Rora',			 1, 20, '2/18/2021', 10, 70);
insert into Billings values (60, 'Marya',			 3, 50, '3/28/2021', 11, 70);
insert into Billings values (61, 'Jasmine',			 2, 60, '9/2/2020', 6, 70);
insert into Billings values (62, 'Halsy',			 3, 10, '10/11/2020', 2, 70);
insert into Billings values (63, 'Bertine',			 1, 6, '8/9/2020', 11, 70);
insert into Billings values (64, 'Karena',			 1, 69, '5/1/2021', 12, 70);
insert into Billings values (65, 'Base',			 1, 46, '1/7/2021', 5, 70);
insert into Billings values (66, 'Merrill',			 2, 39, '2/23/2021', 6, 70);
insert into Billings values (67, 'Sheryl',			 1, 86, '11/12/2020', 5, 70);
insert into Billings values (68, 'Bartram',			 2, 5, '3/14/2021', 6, 70);
insert into Billings values (69, 'Perri',			 2, 34, '8/25/2020', 4, 70);
insert into Billings values (70, 'Lennie',			 1, 3, '10/2/2020', 6, 70);
insert into Billings values (71, 'Helge',			 3, 56, '10/13/2020', 6, 70);
insert into Billings values (72, 'Laurence',			 2, 17, '2/10/2022', 10, 70);
insert into Billings values (73, 'Chantalle',			 3, 89, '9/27/2021', 6, 70);
insert into Billings values (74, 'Aimee',			 3, 53, '6/26/2020', 11, 70);
insert into Billings values (75, 'Bernette',			 1, 4, '11/18/2020', 2, 70);
insert into Billings values (76, 'Lark',			 3, 27, '8/18/2021', 8, 70);
insert into Billings values (77, 'Dick',			 1, 7, '10/14/2020', 9, 70);
insert into Billings values (78, 'Bethina',			 2, 64, '8/21/2021', 4, 70);
insert into Billings values (79, 'Rolland',			 2, 74, '1/19/2022', 5, 70);
insert into Billings values (80, 'Merle',			 3, 29, '5/24/2020', 3, 70);
insert into Billings values (81, 'Diana',			 2, 83, '11/27/2020', 4, 70);
insert into Billings values (82, 'Fanny',			 2, 39, '6/12/2021', 12, 70);
insert into Billings values (83, 'Irvine',			 1, 42, '6/19/2020', 9, 70);
insert into Billings values (84, 'Jobey',			 3, 82, '10/12/2020', 8, 70);
insert into Billings values (85, 'Brian',			 3, 41, '10/5/2020', 5, 70);
insert into Billings values (86, 'Meagan',			 1, 60, '2/6/2022', 5, 70);
insert into Billings values (87, 'Pate',			 1, 66, '10/6/2020', 9, 70);
insert into Billings values (88, 'Bernette',			 1, 193, '3/25/2021', 8, 70);
insert into Billings values (89, 'Nahum',			 3, 15, '9/26/2020', 9, 70);
insert into Billings values (90, 'Reginauld',			 3, 42, '9/2/2020', 5, 70);
insert into Billings values (91, 'Zoe',			 	 2, 80, '4/12/2021', 2, 70);
insert into Billings values (92, 'Sapphire',			 1, 175, '8/10/2020', 7, 70);
insert into Billings values (93, 'Christa',			 1, 16, '8/1/2021', 9, 70);
insert into Billings values (94, 'Abby',			 3, 51, '3/3/2022', 5, 70);
insert into Billings values (95, 'Hadleigh',			 2, 30, '8/30/2021', 10, 70);
insert into Billings values (96, 'Chilton',			 1, 65, '4/30/2021', 6, 70);
insert into Billings values (97, 'Mikel',			 2, 8, '4/14/2021', 5, 70);
insert into Billings values (98, 'Jamison',			 2, 166, '10/16/2020', 1, 70);
insert into Billings values (99, 'Lucius',			 2, 70, '12/16/2021', 5, 70);
insert into Billings values (100, 'Ollie',			 2, 90, '3/13/2021', 2, 70);
GO
create table Accounts (
	id  int IDENTITY(1,1) PRIMARY KEY,
	PlanID INT NOT NULL,
	account nvarchar(500),
	password nvarchar(500),
	date DATE,
	Status int,
	currentUsers INT
)
GO
insert into Accounts values (1, 1, 'jbuckner0@earthlink.net', '3abv1oupe', '8/16/2021', 1, 3);
insert into Accounts values (2, 1, 'bkingcott1@stumbleupon.com', 'Ohmto3FI5j', '10/1/2020', 0, 2);
insert into Accounts values (3, 3, 'playtham2@wix.com', 'z9SuB5xbKo', '2/28/2022', 1, 1);
insert into Accounts values (4, 3, 'tklessmann3@ning.com', 'BYUpIS', '8/31/2020', 1, 2);
insert into Accounts values (5, 3, 'lbeagles4@webnode.com', 'tEVrTQ', '9/6/2020', 0, 3);
insert into Accounts values (6, 3, 'dmaclardie5@sina.com.cn', 'B9oCThz', '9/27/2020', 1, 2);
insert into Accounts values (7, 2, 'islatford6@icq.com', 'vdvkGeRTLXC', '5/21/2021', 1, 4);
insert into Accounts values (8, 1, 'jjeeks7@cafepress.com', '2dPrKi0', '3/3/2022', 0, 2);
insert into Accounts values (9, 1, 'mgilli8@webs.com', 'm8YbnZq3', '4/10/2021', 1, 5);
insert into Accounts values (10, 3, 'tpulbrook9@oaic.gov.au', 'fLA9Nsx', '5/22/2021', 1, 2);
insert into Accounts values (11, 1, 'spattiea@gnu.org', 'rPqGiMFmDYeg', '10/29/2020', 1, 3);
insert into Accounts values (12, 3, 'lmingaudb@symantec.com', 'fsO3CnG', '3/21/2021', 0, 2);
insert into Accounts values (13, 1, 'sinkpinc@pbs.org', '4vI4E1J2B1r', '9/18/2021', 0, 3);
insert into Accounts values (14, 2, 'jseverd@exblog.jp', 'E1rJmPX99', '12/29/2021', 1, 3);
insert into Accounts values (15, 1, 'dberrymane@utexas.edu', 'QyvSlA6i', '7/5/2021', 0, 4);
insert into Accounts values (16, 3, 'pgrushinf@comcast.net', 'fCvaJeORvy', '7/26/2020', 0, 5);
insert into Accounts values (17, 2, 'mbradneckg@patch.com', 'bf4D9WJeNc', '1/27/2021', 0, 2);
insert into Accounts values (18, 2, 'hsowoodh@booking.com', 'JWhQ00zkOEAb', '7/27/2021', 0, 5);
insert into Accounts values (19, 3, 'tharnetti@pagesperso-orange.fr', 'eg29uxL1', '11/19/2020', 0, 4);
insert into Accounts values (20, 1, 'dmacalasterj@oakley.com', 'Sp000ENpO', '10/10/2020', 0, 2);
insert into Accounts values (21, 2, 'jlethburyk@ehow.com', '9Wq9kojt', '6/9/2021', 1, 4);
insert into Accounts values (22, 3, 'ecaldowl@photobucket.com', 'T4iLqRghoc6', '8/24/2020', 0, 2);
insert into Accounts values (23, 3, 'gmcknielym@cloudflare.com', '7zrzYj', '5/30/2021', 1, 2);
insert into Accounts values (24, 3, 'ekopelmann@paginegialle.it', 'qfUz617H0', '2/21/2022', 0, 2);
insert into Accounts values (25, 3, 'cruprechto@cnbc.com', 'bDJ1hQmgo', '3/12/2021', 1, 5);
insert into Accounts values (26, 2, 'jclokep@scientificamerican.com', 'eD8QpwrQA', '6/30/2020', 0, 4);
insert into Accounts values (27, 1, 'mlaslettq@odnoklassniki.ru', 'j9YafL4x', '8/15/2021', 0, 4);
insert into Accounts values (28, 3, 'gdugor@cornell.edu', 'YzviRlS2aU', '12/15/2021', 0, 5);
insert into Accounts values (29, 1, 'ggalilees@google.fr', 'VL46BwNsV9', '12/16/2020', 0, 2);
insert into Accounts values (30, 3, 'kottert@noaa.gov', 'XmGXUYbZ3s8', '12/28/2021', 0, 2);
insert into Accounts values (31, 1, 'dmaxtedu@cam.ac.uk', 'TjoKN8Pt', '11/7/2020', 1, 1);
insert into Accounts values (32, 3, 'nmcdirmidv@wunderground.com', 'QYiFTxIX2', '9/20/2021', 0, 2);
insert into Accounts values (33, 3, 'aosirinw@webeden.co.uk', 'y5TLJLjCN3u', '10/17/2020', 0, 4);
insert into Accounts values (34, 2, 'fbrassingtonx@plala.or.jp', 'l47sG3Jmtr', '9/4/2021', 0, 5);
insert into Accounts values (35, 2, 'kcaisleyy@addthis.com', 'HLZx8F3U5aSZ', '3/9/2021', 0, 2);
insert into Accounts values (36, 3, 'gpizzeyz@joomla.org', 'X0P09sztYXh', '6/15/2020', 0, 5);
insert into Accounts values (37, 1, 'tpinyon10@github.io', 'Gf9CTbM4uop', '9/18/2021', 1, 5);
insert into Accounts values (38, 2, 'pgossipin11@wiley.com', '9NxRj9s8', '7/10/2021', 0, 4);
insert into Accounts values (39, 1, 'mgrinaugh12@geocities.jp', 'fA78mz', '5/7/2021', 0, 5);
insert into Accounts values (40, 1, 'cwybourne13@pbs.org', 'zgwNMs', '9/1/2021', 0, 2);
insert into Accounts values (41, 3, 'cwallis14@ameblo.jp', 'Lui3bO7E2y', '8/10/2020', 0, 2);
insert into Accounts values (42, 2, 'aburnep15@stumbleupon.com', 'Lf8hTHx7m', '2/23/2022', 1, 1);
insert into Accounts values (43, 3, 'bfisbey16@google.com.au', 'aF4WTtHBHaF', '9/18/2020', 0, 3);
insert into Accounts values (44, 3, 'sdambrosio17@cnet.com', 'pS6ihkVx7', '9/13/2020', 0, 2);
insert into Accounts values (45, 2, 'framalhete18@homestead.com', 'br0LL3tU', '12/11/2021', 1, 1);
insert into Accounts values (46, 3, 'ngerrelt19@go.com', 'YPxZ9D', '6/29/2020', 1, 1);
insert into Accounts values (47, 3, 'fkentwell1a@gravatar.com', '8UWoLF50c1s', '1/8/2022', 0, 5);
insert into Accounts values (48, 2, 'cpeople1b@wiley.com', 'v86yZ8NpNWM', '10/4/2020', 0, 3);
insert into Accounts values (49, 3, 'omyrtle1c@acquirethisname.com', 'ioGjub', '1/11/2022', 1, 1);
insert into Accounts values (50, 1, 'gfransson1d@github.io', 'MJYbLu', '9/19/2020', 1, 4);
insert into Accounts values (51, 2, 'bohartnedy1e@i2i.jp', 'jMRdFB8mvQ', '9/20/2021', 1, 1);
insert into Accounts values (52, 3, 'qconduit1f@comcast.net', 'AQkQxTPxa', '2/15/2021', 1, 4);
insert into Accounts values (53, 3, 'jbeeken1g@tuttocitta.it', 'gOqz8hq9', '1/20/2021', 0, 5);
insert into Accounts values (54, 2, 'wbyres1h@ucla.edu', '108OTjVX', '3/13/2021', 0, 4);
insert into Accounts values (55, 3, 'gedgerley1i@dropbox.com', '9HPHLN', '10/10/2020', 1, 5);
insert into Accounts values (56, 3, 'mreame1j@booking.com', 'mjx9aOCDYF', '9/10/2020', 0, 4);
insert into Accounts values (57, 1, 'bfitchell1k@xing.com', 'Col7pDaH', '9/23/2021', 0, 2);
insert into Accounts values (58, 3, 'eweatherall1l@fastcompany.com', 'tseUDEPK', '8/21/2020', 1, 1);
insert into Accounts values (59, 3, 'medgcombe1m@vinaora.com', 'Ug3iHU2D', '12/30/2020', 1, 5);
insert into Accounts values (60, 3, 'vdewitt1n@slate.com', 'yDm5D0qpI', '8/10/2020', 1, 1);
insert into Accounts values (61, 3, 'lhanway1o@nps.gov', '5TMNMfPG', '6/3/2021', 0, 5);
insert into Accounts values (62, 1, 'wgregoretti1p@yolasite.com', 'RdAhWSYdEJlb', '7/30/2020', 0, 3);
insert into Accounts values (63, 2, 'aworsham1q@tamu.edu', 'f8JSEw5z6Zl', '3/12/2021', 0, 5);
insert into Accounts values (64, 1, 'adonneely1r@tumblr.com', 'abRZ1DNPwuuL', '10/28/2020', 1, 1);
insert into Accounts values (65, 2, 'lruppeli1s@cargocollective.com', 'iB8hsAhl', '8/22/2021', 1, 5);
insert into Accounts values (66, 1, 'salpes1t@un.org', 'w1VeJSZLIR', '5/23/2021', 1, 2);
insert into Accounts values (67, 1, 'eoakland1u@1und1.de', 'y8Hch3', '1/17/2021', 1, 4);
insert into Accounts values (68, 1, 'fmccaughen1v@psu.edu', 'NwVW1WMG4L', '12/20/2020', 0, 4);
insert into Accounts values (69, 3, 'fcollinson1w@scientificamerican.com', 'Ydc6qE', '2/9/2022', 0, 1);
insert into Accounts values (70, 1, 'istallan1x@mozilla.org', 'urOOYMcXS', '10/5/2020', 1, 5);
insert into Accounts values (71, 1, 'vgarroch1y@theatlantic.com', 'sCGXdqdG', '1/3/2022', 0, 3);
insert into Accounts values (72, 3, 'fodunniom1z@nbcnews.com', '7Qj4kO9Z', '2/14/2022', 1, 4);
insert into Accounts values (73, 3, 'lfull20@istockphoto.com', 'mlo5M277rRM4', '9/11/2021', 1, 4);
insert into Accounts values (74, 1, 'vnarracott21@zimbio.com', '244FVcV8f', '8/16/2020', 1, 2);
insert into Accounts values (75, 2, 'gmacrory22@edublogs.org', 'xSuqQ6Pd3Piz', '7/16/2021', 0, 3);
insert into Accounts values (76, 1, 'sferier23@blog.com', 'YlvPKAqn9', '12/30/2021', 1, 4);
insert into Accounts values (77, 3, 'wfarris24@mac.com', 'jcUcuif', '6/6/2021', 0, 1);
insert into Accounts values (78, 3, 'tlampet25@4shared.com', 'jDMMjL', '7/2/2021', 1, 5);
insert into Accounts values (79, 2, 'mmustin26@usda.gov', 'LdIjbJgqdchm', '10/17/2021', 1, 5);
insert into Accounts values (80, 3, 'dinman27@fda.gov', 'UmUxzQjG1', '11/14/2021', 0, 5);
insert into Accounts values (81, 1, 'ndyson28@weebly.com', 'yzTDcs7', '9/25/2020', 1, 5);
insert into Accounts values (82, 1, 'vrivalland29@accuweather.com', '64DP40gbwC', '7/11/2020', 0, 5);
insert into Accounts values (83, 3, 'frotherforth2a@engadget.com', 'S7qUrZQw', '6/29/2020', 0, 3);
insert into Accounts values (84, 3, 'gfayers2b@toplist.cz', 'R9PQ17u', '2/12/2022', 0, 3);
insert into Accounts values (85, 3, 'rhardan2c@nymag.com', 'QtBbUSQh', '12/5/2020', 0, 2);
insert into Accounts values (86, 1, 'bleteurtre2d@google.com.au', 'K08nEmQv7', '12/12/2020', 0, 3);
insert into Accounts values (87, 2, 'istoller2e@ucoz.com', 'Rpzhg9E9LWX', '8/23/2021', 0, 2);
insert into Accounts values (88, 2, 'ajoyson2f@opera.com', 'Qp4MNV2', '2/17/2021', 1, 5);
insert into Accounts values (89, 2, 'igwynne2g@pcworld.com', 'zY6pT0lZ', '8/20/2020', 1, 3);
insert into Accounts values (90, 1, 'cpeekevout2h@gnu.org', '146ogMDIz', '6/14/2020', 0, 1);
insert into Accounts values (91, 3, 'iblackham2i@addtoany.com', 'NblSvM5z', '2/18/2022', 1, 1);
insert into Accounts values (92, 2, 'slindro2j@google.ru', 'CSXncCJ', '4/27/2021', 0, 4);
insert into Accounts values (93, 2, 'msymon2k@archive.org', 'UYVUifW9YCE', '2/26/2021', 0, 2);
insert into Accounts values (94, 3, 'iredwall2l@mayoclinic.com', 'tNCZCj23h9', '1/24/2022', 1, 5);
insert into Accounts values (95, 1, 'jcreddon2m@ning.com', 'F1EpnXGRhY0q', '2/23/2021', 0, 4);
insert into Accounts values (96, 2, 'gtomkys2n@cargocollective.com', 'Zx5ZLAT', '1/23/2022', 0, 3);
insert into Accounts values (97, 3, 'ahardwich2o@sbwire.com', 'JL6olvkQR2hY', '6/29/2020', 0, 3);
insert into Accounts values (98, 2, 'esarl2p@tripadvisor.com', 'pUshAy', '1/31/2022', 0, 2);
insert into Accounts values (99, 3, 'jinns2q@time.com', 'IZTRqze', '4/26/2021', 1, 5);
insert into Accounts values (100, 1, 'mhaysham2r@cornell.edu', 'iCdTfhD', '11/29/2021', 1, 4);

DROP TABLE Accounts
DROP TABLE Plans

SELECT * FROM Users where Username = 'adminn'