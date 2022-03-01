DROP DATABASE PRJ301_SellingAccountWebsite
GO
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
insert into Users values ( 'plillyman2r', 'vP6t2m49y', 'ctownshend2r@imgur.com', '9236549966', 1);
GO
CREATE TABLE Orders(
	ID int NOT NULL PRIMARY KEY,
	Username nvarchar (500) NOT NULL,
	Password nvarchar (500) NOT NULL,
	Email nvarchar (500) NOT NULL,
	Phone nvarchar (500) NOT NULL,
	Role int NOT NULL,
)
GO