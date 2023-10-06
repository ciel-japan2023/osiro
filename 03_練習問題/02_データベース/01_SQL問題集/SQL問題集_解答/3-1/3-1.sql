#データの更新（品番在庫テーブルに登録されている秋葉原事業所のデスクトップパソコンの数量を999→50個にする)
USE db_kensyu;

UPDATE em_t_stock_item
SET item_qty = 50 WHERE location_cd = 'CT003' AND item_cd = 'pc001';