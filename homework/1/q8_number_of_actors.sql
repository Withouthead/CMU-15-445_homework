SELECT COUNT(DISTINCT(person_id))
FROM crew, (SELECT DISTINCT(title_id) FROM crew, people WHERE people.name='Mark Hamill' and people.person_id = crew.person_id and people.born=1951) AS person_title_id
WHERE crew.title_id = person_title_id.title_id AND (crew.category = "actor" OR crew.category = "actress");
