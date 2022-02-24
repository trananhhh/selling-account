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
INSERT INTO Users VALUES (1, 'user', '123', 'trananh.netflix@gmail.com', '0987654321', 0);
insert into Users values (1, 'pacedo0', 'sRcaWL9', 'lherety0@gmpg.org', '2003864689', 1);
insert into Users values (2, 'acomino1', 'R2fJNc7x', 'apinks1@who.int', '3432973835', 1);
insert into Users values (3, 'mswanger2', 'KiRfbRGloh', 'alorentzen2@squidoo.com', '5227494236', 1);
insert into Users values (4, 'rbowkett3', 'VF5M52pn', 'flinnemann3@163.com', '2467039747', 1);
insert into Users values (5, 'amedling4', 'zf5htFYYGErF', 'jrogliero4@altervista.org', '6894481695', 1);
insert into Users values (6, 'nvolant5', 'TgJ8xlvNY', 'uwozencroft5@networkadvertising.org', '5384883074', 1);
insert into Users values (7, 'jturfrey6', 'ntgsbx', 'lbunney6@geocities.com', '2325824311', 1);
insert into Users values (8, 'mmcarte7', 'b543JhhK5x6', 'jlittleproud7@themeforest.net', '1789311117', 1);
insert into Users values (9, 'agregolotti8', 'CRcErX', 'mroseaman8@timesonline.co.uk', '1677809506', 1);
insert into Users values (10, 'clandre9', 'C6dGSw3JR', 'lorans9@google.co.uk', '8372717098', 1);
insert into Users values (11, 'abrigshawa', 'CM5YoHQ', 'ledgingtona@usa.gov', '4684782896', 1);
insert into Users values (12, 'mkaliszb', 'ApgQa66', 'msruttonb@comcast.net', '6246323377', 1);
insert into Users values (13, 'hbartunekc', 'B3QdEBZ', 'amcteggartc@wikipedia.org', '8523333825', 1);
insert into Users values (14, 'acervantesd', 'FyywKlcAWAPI', 'fmaggiored@slideshare.net', '7728864491', 1);
insert into Users values (15, 'sbowne', 'alTwlncoJrR', 'cdavye@macromedia.com', '4437504831', 1);
insert into Users values (16, 'sbedinf', 'ZQR1vDg', 'rbomanf@cornell.edu', '1846220291', 1);
insert into Users values (17, 'ctoderbruggeg', '709ViGOzlc', 'esummersideg@bandcamp.com', '7112887306', 1);
insert into Users values (18, 'ptallonh', 'jNwp8n7', 'cortzenh@sourceforge.net', '7553835251', 1);
insert into Users values (19, 'mbarouxi', 'dYrGHkBDG', 'aturbardi@smh.com.au', '9461266223', 1);
insert into Users values (20, 'fbartenj', 'COXWiyaC', 'dbreckellj@tripod.com', '7581471536', 1);
insert into Users values (21, 'mlaurenzk', 'mPKhjhRTM', 'gpoulsumk@scientificamerican.com', '4256473282', 1);
insert into Users values (22, 'stuftinl', 'ZZ0rhG', 'greddickl@sun.com', '9831117154', 1);
insert into Users values (23, 'oeschalettem', 'RPI3SH9zA', 'svaulsm@wordpress.org', '5264288865', 1);
insert into Users values (24, 'lmaccorkelln', 'va69AObQA6', 'ccasinan@csmonitor.com', '3189655692', 1);
insert into Users values (25, 'pmogeyo', 'CvxeZ21', 'jballacho@cam.ac.uk', '9545529742', 1);
insert into Users values (26, 'ofumagallip', 'lMvupUw', 'eshirleyp@uol.com.br', '6186002972', 1);
insert into Users values (27, 'gwinmanq', '6usGWM6X', 'mpoulgreenq@state.tx.us', '8426741851', 1);
insert into Users values (28, 'lmeritr', 'gtT7LVpb7', 'fgainsboroughr@goodreads.com', '2439544873', 1);
insert into Users values (29, 'bcrankhorns', 'BTLLUjS8', 'rblyths@51.la', '2325488293', 1);
insert into Users values (30, 'efairbankt', 'MGRjkrKKo', 'wivict@php.net', '1312877279', 1);
insert into Users values (31, 'mstonebanksu', '3A3pUtTSt04', 'gcrathernu@pbs.org', '1457468122', 1);
insert into Users values (32, 'gattridev', '5wFPTwssiJoa', 'bculchethv@google.fr', '2642004940', 1);
insert into Users values (33, 'csagew', '386rkjpMjh', 'bespadaterw@gizmodo.com', '5976940328', 1);
insert into Users values (34, 'anemchinovx', '0yXCXOoEh', 'pnotleyx@java.com', '3486579663', 1);
insert into Users values (35, 'jminkiny', 'YS1xAdh', 'bcoplestoney@webnode.com', '4365648761', 1);
insert into Users values (36, 'lmuzziniz', 'Oc3Yen2e7HM7', 'lfidlerz@google.pl', '9857434122', 1);
insert into Users values (37, 'mlewty10', 'FCZEgoU7Ec2', 'ckhrishtafovich10@samsung.com', '4941430053', 1);
insert into Users values (38, 'hdarree11', 'jWxF21De', 'lmartensen11@ucsd.edu', '4491232947', 1);
insert into Users values (39, 'dmaus12', '80hBPQ2SuD5y', 'onerney12@uol.com.br', '3438939373', 1);
insert into Users values (40, 'lklisch13', 'bqgpit', 'bprator13@arstechnica.com', '8633226436', 1);
insert into Users values (41, 'jvonderdell14', 'S5QajAXQ', 'dfelten14@upenn.edu', '9094164307', 1);
insert into Users values (42, 'rdansken15', 'bPznKxYY', 'katwater15@ibm.com', '1064954264', 1);
insert into Users values (43, 'cferrolli16', '0TAN7sqNR', 'ehoogendorp16@nsw.gov.au', '2912849537', 1);
insert into Users values (44, 'lsagg17', 'cHhZ2x', 'eantos17@microsoft.com', '8644180799', 1);
insert into Users values (45, 'igoscar18', 'jIQwoOf', 'mboissier18@umn.edu', '5539229740', 1);
insert into Users values (46, 'hdomm19', 'xaA7YfDRoL', 'kprandy19@taobao.com', '5752878529', 1);
insert into Users values (47, 'ldovermann1a', 'KcA1dv6nFt4w', 'slisamore1a@cbsnews.com', '1679010359', 1);
insert into Users values (48, 'lstithe1b', 'xRs8m9', 'rdanilov1b@sakura.ne.jp', '3135419724', 1);
insert into Users values (49, 'llargen1c', 'gV3tE7I', 'hcolgrave1c@cloudflare.com', '4236643002', 1);
insert into Users values (50, 'ckirstein1d', 'bnATyY0', 'cmussotti1d@surveymonkey.com', '1554712721', 1);
insert into Users values (51, 'pmccauley1e', 'sAU50GLjO', 'criep1e@thetimes.co.uk', '8027434512', 1);
insert into Users values (52, 'mdumberrill1f', 'EbQo6YrM9', 'tmctrustam1f@ca.gov', '8696613085', 1);
insert into Users values (53, 'bdaid1g', 'A0orJDZ7Jcwy', 'cleathe1g@prlog.org', '7658199544', 1);
insert into Users values (54, 'cvasovic1h', 's3FZClw1hxVW', 'lwissby1h@github.com', '5263595250', 1);
insert into Users values (55, 'jbestwick1i', 'WwIVXE', 'bwadeling1i@eventbrite.com', '6113266161', 1);
insert into Users values (56, 'mlage1j', 'oGXFp2BvrJ', 'cching1j@uol.com.br', '1228768478', 1);
insert into Users values (57, 'tcornejo1k', 'qq57Afk', 'aablott1k@wsj.com', '2706936716', 1);
insert into Users values (58, 'rlambillion1l', 'QMrcq8V5oi', 'vmolineux1l@infoseek.co.jp', '3364865611', 1);
insert into Users values (59, 'dhollindale1m', 'DEN8pg4o', 'ksimoneau1m@cyberchimps.com', '9537613832', 1);
insert into Users values (60, 'tkarpov1n', '2nO1W1Kq', 'ugibberd1n@aol.com', '2796230664', 1);
insert into Users values (61, 'kgillbard1o', '7L2qCnH3h', 'rpoulston1o@hatena.ne.jp', '8086919172', 1);
insert into Users values (62, 'cpegler1p', 'GE0STTHg', 'amcsperrin1p@elegantthemes.com', '4798066913', 1);
insert into Users values (63, 'abrydie1q', '1VX5SCEux', 'jfinlan1q@google.com.au', '5212875556', 1);
insert into Users values (64, 'mgridley1r', 'eI1gnPCuR6', 'dairey1r@arstechnica.com', '4496337321', 1);
insert into Users values (65, 'ddoerr1s', 'HCAXLnxXLF', 'cdugan1s@phpbb.com', '8934908247', 1);
insert into Users values (66, 'rgarbutt1t', 'DtOomN3hb8W', 'briteley1t@chronoengine.com', '4023195673', 1);
insert into Users values (67, 'aamaya1u', 'gwyDQXtBYkb2', 'efleischer1u@ucoz.com', '7497337363', 1);
insert into Users values (68, 'pcometto1v', '0BESsQ', 'clemary1v@storify.com', '4445491281', 1);
insert into Users values (69, 'dcornehl1w', 'RvgpJdF3uW', 'fhassan1w@ox.ac.uk', '7689678417', 1);
insert into Users values (70, 'lfeenan1x', 'uPLc8lvO', 'tsimkiss1x@yahoo.com', '8425913910', 1);
insert into Users values (71, 'msignoret1y', 'c32vJJTkluS', 'ohallgalley1y@businessweek.com', '8972051701', 1);
insert into Users values (72, 'bgallamore1z', 'Ohxf9V', 'mstclair1z@studiopress.com', '8585312766', 1);
insert into Users values (73, 'cbryan20', 'gpPjd67i', 'mbrakespear20@free.fr', '4027145619', 1);
insert into Users values (74, 'kbarts21', 'X9efMU7', 'remslie21@loc.gov', '1027268352', 1);
insert into Users values (75, 'bwheeler22', 'Fx8jNvzybr9', 'dbiasetti22@rediff.com', '5168793508', 1);
insert into Users values (76, 'nzold23', 'cf9MjVxkQb', 'pbraidford23@symantec.com', '2191972295', 1);
insert into Users values (77, 'lhele24', '0R1qe6OJs', 'kcretney24@diigo.com', '3168664215', 1);
insert into Users values (78, 'kgoulbourn25', 'jlU7gW7S', 'bpaoletto25@wikispaces.com', '1689648494', 1);
insert into Users values (79, 'gwestrey26', 'nqLZRQ', 'lreilinger26@lycos.com', '6898955549', 1);
insert into Users values (80, 'llewton27', '7DV2Oi', 'bdowears27@tripod.com', '8778009617', 1);
insert into Users values (81, 'avolette28', 'y2Tapk7P2T', 'cedgehill28@friendfeed.com', '1296334471', 1);
insert into Users values (82, 'schallen29', 'STlsOlIvOnDF', 'bmcduffy29@squidoo.com', '8628630158', 1);
insert into Users values (83, 'ujuares2a', 'wN5UI4kximY', 'jvasilic2a@ow.ly', '5874739854', 1);
insert into Users values (84, 'dharrington2b', 'esaez1', 'mheigl2b@sfgate.com', '9616704304', 1);
insert into Users values (85, 'bdillicate2c', 'Fi8Er6B4gLgz', 'lhowsan2c@chicagotribune.com', '1661900077', 1);
insert into Users values (86, 'jgrendon2d', 'IkQT7zKsTpow', 'hlacroix2d@ycombinator.com', '1608665136', 1);
insert into Users values (87, 'gshipman2e', 'HTDmS3l2S64b', 'aspaxman2e@cbsnews.com', '6198350630', 1);
insert into Users values (88, 'bkrishtopaittis2f', '5S4ulSk', 'mhabbert2f@hao123.com', '1732701154', 1);
insert into Users values (89, 'thazlewood2g', 'olGZVC', 'acarrel2g@illinois.edu', '5624140913', 1);
insert into Users values (90, 'dtonnesen2h', 'tA8XWRj', 'jshave2h@histats.com', '3076253635', 1);
insert into Users values (91, 'bbarfoot2i', 'L8CvbeczUp', 'ptorra2i@multiply.com', '9377150602', 1);
insert into Users values (92, 'alinskey2j', 'jytmM99MKa', 'nwillshear2j@phoca.cz', '6845131079', 1);
insert into Users values (93, 'pcarlill2k', 'CfyBt2dL5Y', 'gcamelli2k@issuu.com', '1158328264', 1);
insert into Users values (94, 'ratcheson2l', 'QHEAa5v6Jv7', 'mscholig2l@163.com', '2554467534', 1);
insert into Users values (95, 'rverdon2m', 'Tx7FdsXh4wm', 'mshakesby2m@weebly.com', '9606840157', 1);
insert into Users values (96, 'tvoff2n', 'sCqLoMxF', 'tazam2n@pen.io', '8535000409', 1);
insert into Users values (97, 'ewolfe2o', 'NRJ63n', 'khammatt2o@digg.com', '3007915406', 1);
insert into Users values (98, 'emcallester2p', 'DSR144P3Uzw0', 'emacguire2p@ameblo.jp', '4913924202', 1);
insert into Users values (99, 'rprendeville2q', 'fdub5lQtke7y', 'wspeaks2q@census.gov', '9382729942', 1);
insert into Users values (100, 'plillyman2r', 'vP6t2m49y', 'ctownshend2r@imgur.com', '9236549966', 1);
DROP DATABASE PRJ301_SellingAccountWebsite
DROP TABLE Plans
DROP TABLE Users