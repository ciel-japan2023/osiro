USE world;

-- 問1　英語が使える国の一覧
SELECT country.Name
	, cl.Language
FROM country
LEFT JOIN countrylanguage AS cl
ON country.Code = cl.CountryCode
WHERE cl.Language = 'English';


-- 問2 スペイン語が「公用語」の国の一覧（％が高い順）
SELECT W1.Name
	, W1.Language
	, W1.IsOfficial
    , W1.Percentage
FROM
(SELECT 
	country.Name
	, cl.Language
	, cl.IsOfficial
    , cl.Percentage
FROM country
LEFT JOIN countrylanguage AS cl
ON country.Code = cl.CountryCode
WHERE cl.Language = 'Spanish'
)
AS W1
WHERE W1.IsOfficial = 'T'
ORDER BY W1.Percentage DESC;


-- 問3 国民総生産ランキング　上位20国
SELECT 
	RANK()
		OVER(ORDER BY GNP DESC) AS RANKING
    , country.Name
    , country.GNP
	, country.GNPOld
FROM country
ORDER BY GNP DESC
LIMIT 20;


-- 問4 DBに登録されている日本の街の数
SELECT
	COUNT(*) AS 日本の街の数
FROM 
(SELECT
RANK()
	OVER(ORDER BY city.Name) AS count
, city.Name
FROM city
WHERE CountryCode = 'JPN'
)
AS T1;


-- 問5 ヨーロッパに属する国に存在する街
SELECT
	city.CountryCode
    , city.Name
    , country.Name
    , country.Continent
    , city.Population
FROM city
LEFT JOIN country
	ON city.CountryCode = country.Code 
WHERE Continent = 'Europe';







