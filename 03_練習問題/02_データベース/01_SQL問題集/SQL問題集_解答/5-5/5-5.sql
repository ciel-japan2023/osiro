/*5-5 事業所ごとの機材種別の合計を求める。合計が30以上のデータに絞る
※ソート順：事業所名（昇順）、機材種別（降順） */

SELECT
W1.location_name
, W1.code_name AS item_type_name
, W1.item_qty
FROM
(SELECT 
location_name
, T3.location_cd
, code_type
, code_value
, code_name
, SUM(item_qty) AS item_qty
FROM em_m_code AS T1

RIGHT OUTER JOIN em_m_item AS T2
	ON T1.code_value = T2.item_type AND T1.code_type ='item_type'

RIGHT OUTER JOIN em_t_stock_item AS T3
	ON T2.item_cd = T3.item_cd
    
RIGHT OUTER JOIN em_m_location AS T4
	ON T3.location_cd = T4.location_cd
    
GROUP BY T4.location_name, T3.location_cd, T1.code_type, T1.code_value, T1.code_name
HAVING SUM(item_qty)
) 
as W1
HAVING W1.item_qty >= 30
ORDER BY W1.location_cd ASC, W1.code_name;

