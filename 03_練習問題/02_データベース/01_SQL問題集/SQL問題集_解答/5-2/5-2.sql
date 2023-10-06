#5-2CL全体の所有している機材の合計を取得
USE db_kensyu;

SELECT SUM(item_qty) AS sum FROM em_t_stock_item;