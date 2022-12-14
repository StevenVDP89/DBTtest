with SQ
AS
(
    select cut, CASE WHEN cut = 'Premium' THEN 'Premium' ELSE 'Not Premium' END AS cutcategory, price

    from default.diamonds
)
select cut, AVG(price) AS avgpricepercutcategory
from SQ
group by cut