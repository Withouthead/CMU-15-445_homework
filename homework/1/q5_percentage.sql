Select printf("%d0s", premiered/10), ROUND(count(*)*100.0/(SELECT COUNT(*) FROM titles), 4) 
from titles 
where premiered is not NULL 
GROUP by (premiered/10) 
ORDER by count(*) DESC;

