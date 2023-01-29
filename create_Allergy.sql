INSERT INTO Tag_Properties(name) VALUES ('벅스버니버니당근당근'), ('크림치즈아이스크림'), ('흑임자만났떡'), ('아이스허쉬앤리세스'), ('허쉬초콜릿아이스크림'), ('리넛버터아이스크림'), ('윈터민트초콜렛칩'), ('비타500'),
('소르네'), ('파인애플'), ('코코넛'), ('샤베트'), ('초코'), ('마카다미아'), ('코코넛'), ('오레오쿠키앤크림'), ('월넛'), ('단짠단짠'), ('솔티카라멜아이스크림'), ('오레오쿠키'), ('카라멜리본'), ('오레오쿠키앤카라멜'), ('프랄린'),
('초콜릿'), ('크림'), ('아몬드'), ('초코라떼'), ('흑임자크림치즈블라스트'), ('초콜릿피넛버터블라스트'), ('허쉬초콜릿아이스크림'), ('리세스피넛버터'), ('딸기'), ('치즈케이크'), ('코코넛커피'), ('바나나킥'), ('바나나'),
('엄마는외계인'), ('토피넛'), ('캔디라떼'), ('흑임자'), ('오트라떼'), ('피스타치오'), ('초코아몬드'), ('아이스가래떡흑임자우유'), ('아이스모찌흑임자'), ('찹쌀떡'), ('피칸'), ('아이스가래떡우유'), ('아이스가래떡꿀고구마'), ('허쉬미니아이스스틱바'), ('허쉬초콜릿아이스크림'), ('더블쿠키샌드'),
('아이스쿠키샌드'), ('바닐라'), ('우유'), ('아이스모나카'), ('아이스마카롱'), ('카라멜리본'), ('바닐라아이스크림'), ('쿠키샌드');

INSERT INTO Product_Tag (product_id, tag_id) VALUES (1, 1), (1, 2), (2, 3), (3, 4), (3, 5), (3, 6), (4, 7), (5, 8), (5, 9)
, (6, 10), (6, 11), (6, 12), (7, 13), (7, 14), (7, 15), (8, 16), (9, 17), (10, 18), (10, 19), (10, 20), (10, 21), (10, 22),
(11, 23), (11, 24), (11, 25), (12, 26), (12, 27), (13, 26), (13, 27), (14, 28), (15, 29), (15, 30), (15, 31), (16, 32), (16, 33),
(17, 34), (18, 35), (18, 36), (18, 24), (18, 37), (19, 38), (19, 39), (20, 38), (20, 39), (21, 40), (21, 41), (22, 40), (22, 41),
(23, 42), (23, 43), (24, 44), (25, 45), (25, 46), (25, 40), (25, 47), (26, 48), (27, 49), (28, 26), (28, 50), (28, 51), (29, 24),
(29, 35), (29, 52), (30, 53), (30, 54), (31, 55), (31, 36), (32, 24), (32, 57), (33, 47), (33, 58), (33, 57), (33, 59), (35, 24), (35, 60);

INSERT INTO product_Allergy (product_id, allergy_id) VALUES (1,1), (1, 4), (1, 5), (1, 6), (2, 2), (2, 4), (2, 5), (3, 2), (3, 3), (3, 4), (3, 5), (4, 2), (4, 5),
(5, 7), (6, 5), (7, 5), (8, 2), (8, 4), (8, 5), (9, 5), (9, 6), (10, 2), (10, 4), (10, 5), (11, 5), (12, 2), (12, 5), (13, 2), (13, 5), (14, 2), (14, 5),
(15, 2), (15, 3), (15, 5), (16, 7), (17, 7), (18, 1), (18, 2), (18, 4), (18, 5), (19, 5), (20, 5), (21, 2), (21, 5), (22, 2), (22, 5), (23, 2), (23, 5), (23, 6),
(24,  7), (25, 7), (28, 7), (29, 7), (30, 7), (31, 7), (32, 7), (33, 7), (34, 7), (35, 7);

select
	product.id,
	product.ko_name,
	json_agg(allergy_Properties.name)
from
	product
LEFT JOIN product_allergy ON product.id = product_allergy.product_id
LEFT JOIN allergy_Properties ON allergy_Properties.id = product_allergy.allergy_id
GROUP BY
	product.id, product.ko_name
ORDER BY product.id;

select * from Tag_Properties;

SELECT * from Allergy_properties;

Select * from product_tag;

SELECT * FRom Product_Allergy;

drop table Product_Allergy;

select * from product_allergy

select
	product.id,
	product.ko_name,
	json_agg(Tag_Properties.name)
from
	product
LEFT JOIN product_tag ON product.id = product_tag.product_id
LEFT JOIN Tag_Properties ON Tag_Properties.id = product_tag.tag_id
GROUP BY
	product.id, product.ko_name
ORDER BY product.id;

select * from Tag_Properties;

drop table Tag_properties;

drop table Product_Tag;