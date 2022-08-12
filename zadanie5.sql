SELECT title_ratings.averagerating
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst=title_ratings.tconst
WHERE title_ratings.averagerating IS NULL