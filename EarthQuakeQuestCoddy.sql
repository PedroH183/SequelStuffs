select location, ROUND(AVG((( (amplitude/period) * (amplitude/period) ) / period)), 2) as avg_magnitude 
from  earthquakes
where amplitude >= 1 and period >= 1
group by location 
having AVG(( (amplitude/period) * (amplitude/period) ) / period ) > 1;

