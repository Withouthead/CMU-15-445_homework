SELECT primary_title, count_num 
FROM (SELECT title_id, count(*) as count_num FROM akas GROUP BY title_id) as a_table, titles
WHERE a_table.title_id = titles.title_id
ORDER BY count_num DESC
LIMIT 10