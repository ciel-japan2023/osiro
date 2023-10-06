#データ削除（品番在庫テーブルに登録されている秋葉原事業所のポケベルのデータを削除する）
USE db_kensyu;
DELETE FROM em_t_stock_item WHERE location_cd='CT003' AND item_cd='pb001';

#データ削除できたか確認
SELECT*FROM em_t_stock_item;