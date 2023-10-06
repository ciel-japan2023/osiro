#データの登録
USE db_kensyu;

#品番マスタ
INSERT INTO em_m_item
VALUE('pc001','デスクトップパソコン','pc'),
('pc002','ノートパソコン','pc'),
('pc999','ｼｬｯﾁｮｻﾝ専用パソコン','pc'),
('sp001','Androidスマホ','sp'),
('sp002','iPhone','スマホ'),
('sp999','超高級なあいふぉん','sp'),
('pb001','ポケベル','pb');

#拠点マスタ
INSERT INTO em_m_location
VALUE('CN001','本社'),
('CN002','名古屋事業所'),
('CT001','関東営業所'),
('CT002','千葉事業所'),
('CT003','秋葉原事業所');

#品番在庫
INSERT INTO em_t_stock_item
VALUE('CN001','pc001',2),
('CN001','pc999',1),
('CN001','sp001',3),
('CN002','pc001',10),
('CN002','pc002',20),
('CN002','sp001',30),
('CT001','pc002',5),
('CT001','sp002',4),
('CT001','sp999',1),
('CT002','pc001',7),
('CT002','pc002',13),
('CT002','sp001',18),
('CT002','sp002',12),
('CT003','pc001',999),
('CT003','pb001',1);

#コードマスタ
INSERT INTO em_m_code
VALUE('item_type','pc','パソコン'),
('item_type','sp','スマホ'),
('item_type','pb','ポケベル'),
('model_cd','sp','スマートフォン'),
('model_cd','pc','パーソナルコンピューター');

