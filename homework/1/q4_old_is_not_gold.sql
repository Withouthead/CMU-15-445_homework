Select printf("%d0s", premiered/10), count(*) from titles where premiered is not NULL GROUP by (premiered/10) ORDER by count(*) DESC;


