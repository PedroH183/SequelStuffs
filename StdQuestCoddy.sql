-- dont necessary calculate sqrt, BUT search the result and write here the difference

-- this is a variance not STD !!!!
select (
    (
        SUM(
            (price - (select avg(price) from items)) * price - (select avg(price) from items)
        ) / COUNT(1)
    )
) as STD from items;