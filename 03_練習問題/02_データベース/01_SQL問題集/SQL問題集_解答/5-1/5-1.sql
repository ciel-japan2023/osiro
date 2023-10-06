#本社にある機材の一覧の所有数が少ない順に取得
USE db_kensyu;

SELECT item_name, item_qty FROM em_m_item INNER JOIN em_t_stock_item
ON em_m_item.item_cd = em_t_stock_item.item_cd WHERE location_cd = 'CN001' ORDER BY item_qty ASC;