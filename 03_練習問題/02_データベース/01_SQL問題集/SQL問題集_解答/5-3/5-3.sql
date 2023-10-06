USE db_kensyu;

/*「拠点マスタ」テーブルから「拠点名」のみ取得し、昇順で表示
SELECT location_name 
FROM em_m_location 
ORDER BY location_cd;
*/

/*「品番在庫」テーブルから「拠点コード」でグループ化、グループごとの「在庫数」を取得し、昇順で表示
SELECT location_cd,SUM(item_qty) AS SUM 
FROM em_t_stock_item 
GROUP BY location_cd
ORDER BY location_cd;
*/

#5-3 拠点別で所有している機材の合計を、拠点コード「昇順」で取得
SELECT location_name,SUM(item_qty) AS sum 
FROM em_m_location 
LEFT JOIN em_t_stock_item 
	ON em_m_location.location_cd = em_t_stock_item.location_cd
GROUP BY location_name; 