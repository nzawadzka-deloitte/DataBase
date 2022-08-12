SELECT title_ratings.averagerating, title_basics.startyear, title_basics.originaltitle
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst=title_ratings.tconst
WHERE title_ratings.averagerating < '2'
ORDER BY title_ratings.averagerating;