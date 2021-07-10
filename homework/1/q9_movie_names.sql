SELECT DISTINCT(primary_title)
FROM (SELECT DISTINCT(title_id) FROM crew, people WHERE people.name='George Lucas' and people.person_id = crew.person_id and people.born=1944) AS g_title_id, titles, (SELECT DISTINCT(title_id) FROM crew, people WHERE people.name='Mark Hamill' and people.person_id = crew.person_id and people.born=1951) AS m_title_id
WHERE g_title_id.title_id = m_title_id.title_id and titles.title_id = g_title_id.title_id;
