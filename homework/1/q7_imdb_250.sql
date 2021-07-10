WITH movie(t_id, rating) AS (
    SELECT titles.title_id,((votes*rating+25000.0*
        ((SELECT SUM(votes*rating) FROM titles, ratings WHERE titles.type = 'movie' AND ratings.title_id = titles.title_id) / (
        SELECT SUM(votes)  FROM titles, ratings WHERE titles.type = 'movie' AND ratings.title_id = titles.title_id) ))/(25000.0+votes))
    FROM ratings, titles
    WHERE titles.title_id = ratings.title_id
)
SELECT primary_title, rating
FROM movie, titles
WHERE titles.title_id = t_id
ORDER BY movie.rating DESC
LIMIT 250;