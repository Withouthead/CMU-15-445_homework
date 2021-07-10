WITH split(word, str) AS(
    SELECT '', genres || ',' FROM titles
    UNION ALL SELECT
    substr(str, 0, instr(str, ',')),
    substr(str, instr(str, ',')+1)
    FROM split WHERE str != ''
)
SELECT word, COUNT(*) as num
FROM split
WHERE word != '' and word != '\N'
GROUP BY word
ORDER BY num DESC;