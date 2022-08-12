SELECT title_basics.originaltitle, title_episode.seasonnumber,title_episode.episodenumber, CAST(title_ratings.averagerating as Decimal)*CAST(title_ratings.numvotes as Decimal) AS Rating,  title_episode.parenttconst
FROM ((title_episode
INNER JOIN title_ratings ON title_episode.tconst=title_ratings.tconst)
INNER JOIN title_basics ON title_episode.parenttconst=title_basics.tconst)
WHERE title_episode.parenttconst = 'tt0129117'