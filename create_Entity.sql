--category insert
INSERT INTO category (category_name) VALUES('아이스크림'), ('음료'), ('디저트');

--product insert
--아이스크림
INSERT INTO product 
(ko_name, en_name, category_id, description, kcal, salt, sugar, fat, protein, caffeine, img_url) VALUES
('벅스 버니버니 당근당근', 'BUGS BUNNY BUNNY CARROT CAKE', 1, 
 '부드러운 크림치즈 아이스크림에 당근 쿠키 크럼블, 구운 피칸&월넛, 크랜베리 리본이 어우러진 맛',
261, 75, 23, 7, 4, 0, 'url'),
('벅스 버니! 흑 임자 만났떡', 'BUGS BUNNY BLACK SESAME ICE CREAM', 1, 
 '흑임자와 크림치즈 아이스크림에 흑임자 떡,쌀떡이 쏘옥~',
244, 107, 20, 7, 4, 0, 'url'),
('아이스 허쉬 앤 리세스', 'ICE HERSHEY´S & REESE´S', 1, 
 '달콤한 허쉬 초콜릿과 고소한 리세스 피넛버터 아이스크림에 초콜릿 프레첼이 쏙쏙!',
270, 97, 22, 9, 5, 0, 'url'),
('윈터 민트 초콜릿 칩', 'WINTER MINT CHOCOLATE CHIP', 1, 
 '상쾌한 민트 아이스크림과 달콤한 초콜릿 칩에 레드 팝핑캔디가 쏙쏙!',
288, 67, 26, 10, 4, 0, 'url'),
('비타 500 소르베', 'VITA 500 SORBET', 1, 
 '상큼한 비타민C의 맛! 시원한 소르베로 즐기는 비타 500',
136, 2, 25, 0, 0, 0, 'url'),
('피나 콜라다', 'PINA COLADA', 1, 
 '상큼한 파인애플&코코넛 샤베트에 파인애플이 쏙쏙',
199, 26, 28, 2, 1, 0, 'url'),
('초코넛 마카다미아', 'CHOCONUT MACADAMIA', 1, 
 '밀크 초콜릿 아이스크림과 코코넛 아이스크림에 마카다미아 넛이 가득!',
270, 78, 24, 8, 4, 0, 'url'),
('오레오 쿠키 앤 크림', '', 1, 
 '부드러운 바닐라향 아이스크림에, 달콤하고 진한 오레오 쿠키가 듬뿍!',
228, 127, 18, 8, 5, 0, 'url'),
('월넛', '', 1, 
 '고소하고 향긋한 호두 아이스크림에 호두가 듬뿍 들어있는 제품',
276, 83, 28, 6, 9, 0, 'url'),
('오레오 쿠키 앤 카라멜', 'OREO COOKIE´S N CARAMEL', 1, 
 '솔티 카라멜 아이스크림에 달콤한 오레오 쿠키가 쏘옥!',
290, 121, 26, 9, 3, 0, 'url'),
('프랄린 앤 크림', 'PRALINES´N CREAM', 1, 
 '바삭한 프랄린 피칸과 진한 카라멜이 만드는 환상의 맛!',
294, 161, 35, 8, 5, 0, 'url');

--음료
INSERT INTO product 
(ko_name, en_name, category_id, description, kcal, salt, sugar, fat, protein, caffeine, img_url) VALUES
('아몬드봉봉초코라떼(ICED)', 'ALMOND BON BON CHOCO LATTE ICED', 2,
 '달콤한 초코에 초콜릿 아몬드를 더한 배스킨라빈스의 초코 음료', 265, 138, 27, 6, 6, 0, 'test.png'),
('아몬드봉봉초코라떼(HOT)', 'ALMOND BON BON CHOCO LATTE HOT', 2,
 '달콤한 초코에 초콜릿 아몬드를 더한 배스킨라빈스의 초코 음료', 350, 203, 32, 10, 10, 0, 'test.png'),
 ('흑임자 크림치즈 블라스트', 'BLACK SESAME CREAM CHEESE BLAST', 2,
 '고소한 흑임자에 부드러운 크림치즈를 더해 더 진하게 즐기는 흑임자 맛 블라스트!', 290, 215, 28, 4.3, 5, 0, 'test.png'),
 ('초콜릿피넛버터블라스트', 'CHOCOLATE PEANUT BUTTER BLAST', 2,
 '진한 허쉬 초콜릿과 고소한 리세스 피넛버터가 만나 달콤하게 즐기는 블라스트', 430, 153, 43, 9, 8, 0, 'test.png'),
 ('딸기 치즈케이크 블라스트', '', 2,
 '딸기맛 블라스트 위에 치즈케이크 토핑을 가득 올린 음료', 595, 312, 54, 18, 8, 0, 'test.png'),
 ('코코넛 커피 블라스트', 'COCONUT COFFEE BLAST', 2,
 '달달한 커피 & 코코넛 향 가득한 아이스크림에 콜드브루까지 더한 블라스트', 315, 80, 41, 8, 5, 123, 'test.png'),
 ('외계인의 바나나킥 블라스트', '', 2,
 '초코바나나 블라스트 위에 바나나맛 프레첼볼을 올린 외계인의 바나나킥 블라스트', 450, 217, 47, 13, 8, 0, 'test.png'),
 ('토피넛 캔디라떼 (HOT)', 'TOFFEENUT CANDY LATTE HOT', 2,
 '토피넛 라떼 위에 캔디 토핑을 올린 배스킨라빈스 시그니처 토피넛 라떼', 330, 204, 38, 7, 9, 0, 'test.png'),
 ('토피넛 캔디라떼 (ICED)', 'TOFFEENUT CANDY LATTE ICED', 2,
 '토피넛 라떼 위에 캔디 토핑을 올린 배스킨라빈스 시그니처 토피넛 라떼', 265, 159, 34, 4.9, 6, 0, 'test.png'),
 ('흑임자 오트 라떼 (HOT)', 'BLACK SESAME OAT LATTE', 2,
 '고소하고 달달한 흑임자와 오틀리 우유가 아주 잘 어울리는 라떼 (HOT)', 305, 201, 27, 1.7, 6, 0, 'test.png'),
 ('흑임자 오트 라떼 (ICED)', 'BLACK SESAME OAT LATTE', 2,
 '고소하고 달달한 흑임자와 오틀리 우유가 아주 잘 어울리는 라떼 (ICED)', 255, 162, 23, 1.5, 5, 0, 'test.png'),
  ('피스타치오 초코아몬드 블라스트', 'PISTACHIO CHOCOLATE ALMOND BLAST', 2,
 '피스타치오 블라스트와 초코아몬드 토핑을 함께 즐기는 블라스트', 415, 135, 43, 9, 9, 0, 'test.png');
 
 --디저트
INSERT INTO product
(ko_name, en_name, category_id, description, kcal, salt, sugar, fat, protein, caffeine, img_url) VALUES
('아이스 가래떡 흑임자 우유', 'ICE GARAETTEOK BLACK SESAME MILK', 3,
'쫀득한 찹쌀떡 속에 고소한 흑임자 우유 아이스크림을 넣은 아이스 가래떡', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 모찌 흑임자', 'ICE MOCHI BLACK SESAME', 3,
'쫀득한 찹쌀 떡 속에 고소한 흑임자 아이스크림과 달콤 고소한 프랄린 피칸이 가득한 디저트', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 가래떡 꿀고구마', 'HONEY SWEET POTATO ICE GARATTEOK', 3,
'쫀득한 찹쌀떡 속에 달콤한 꿀고구마 아이스크림을 넣은 아이스 가래떡', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 가래떡 우유', 'ICE GARAETTEOK MILK', 3,
'쫀득한 찹쌀떡 속에 부드럽고 진한 우유 아이스크림을 넣은 아이스 가래떡', 0, 0, 0, 0, 0, 0, 'test.png'),
('허쉬 미니 아이스 스틱바', 'HERSHEY´S MINI ICE STICK BAR', 3,
'진한 허쉬 초콜릿 아이스크림에 초콜릿 코팅과 아몬드 토핑을 더한 미니 아이스 스틱바 (3개입)', 0, 0, 0, 0, 0, 0, 'test.png'),
('더블 쿠키 샌드 바나나킥 & 초콜릿', 'DOUBLE COOKIS SAND BANANAKICK & CHOCOLATE', 3,
'초코 쿠키 사이에 바나나킥과 초콜릿 두가지 맛 아이스크림이 샌드된 디저트', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 쿠키 샌드 바닐라', 'ICE COOKIE SAND VANILLA', 3,
'초코쿠키 사이에 바닐라 아이스크림이 샌드된 아이스크림', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 모나카 우유', 'ICE MONAKA MILK', 3,
'진한 우유 풍미가 가득한 우유 아이스크림이 샌드된 모나카', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 마카롱 초콜릿 무스', 'ICE MACARON CHOCOLATE MOUSSE', 3,
'초콜릿 칩이 가득한 초콜릿 무스 아이스크림이 샌드된 마카롱', 0, 0, 0, 0, 0, 0, 'test.png'),
('아이스 마카롱 바닐라 카라멜 앤 피칸', 'ICE MACARON VANILLA CARAMEL & PECAN', 3,
'카라멜 리본과 피칸이 가득한 바닐라 아이스크림이 샌드된 마카롱', 0, 0, 0, 0, 0, 0, 'test.png'),
('뮤츠의 치즈 아빵', 'A-BBANG CHEESE', 3,
'부드러운 케익 시트 사이에 진한 치즈 아이스크림이 어우러진 아이스 빵 샌드', 0, 0, 0, 0, 0, 0, 'test.png'),
('더블 쿠키 샌드 바닐라&초콜릿', 'DOUBLE COOKIE SAND VANILLA & CHOCOLATE', 3,
'초코 쿠키 사이에 바닐라와 초콜릿 두가지 맛 아이스크림이 샌드된 더블 쿠키 샌드', 0, 0, 0, 0, 0, 0, 'test.png');

--product insert
INSERT INTO allergy_properties (name) VALUES ('계란'), ('대두'), ('땅콩'), ('밀'),
('우유'), ('호두'), ('없음');
