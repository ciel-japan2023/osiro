#5-4 機材ごとの「在庫数」の合計を、「合計数」の降順で取得
USE db_kensyu;

SELECT T1.item_name, SUM(T2.item_qty) AS sum
FROM em_m_item AS T1
LEFT JOIN em_t_stock_item AS T2
	ON T1.item_cd = T2.item_cd
WHERE T1.item_name NOT IN('ポケベル') 
GROUP BY T1.item_cd 
ORDER BY SUM(T2.item_qty) DESC;