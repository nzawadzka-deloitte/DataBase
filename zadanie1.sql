SELECT  MAX(title_ratings.averagerating), title_basics.startyear
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst=title_ratings.tconst
GROUP BY title_basics.startyear
ORDER BY title_basics.startyear;