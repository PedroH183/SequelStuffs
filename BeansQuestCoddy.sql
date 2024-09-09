SELECT 
    ROUND(
        (
            SUM(
                (density - (SELECT AVG(density) FROM beans)) * (density - (SELECT AVG(density) FROM beans))
            ) / COUNT(*)
        ), 2
    ) as STD 
FROM (
    -- relevant beans 
    SELECT * FROM beans 
    WHERE 
        diameter_wide > (SELECT AVG(diameter_wide) FROM beans) and
        (
            (shade == 'light' and ((density / diameter_wide) > 0.1)) or 
            shade == 'dark' or 
            shade != 'semi-dark'
        )
)
GROUP BY brand
ORDER BY STD ASC;