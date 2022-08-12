SELECT COUNT(*), title_basics.titletype
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst=title_ratings.tconst
WHERE title_basics.startyear > 2000
GROUP BY titletype