SELECT COUNT(title_episode.episodenumber), title_basics.originaltitle
FROM title_basics
INNER JOIN title_episode ON title_basics.tconst=title_episode.parenttconst
GROUP BY title_basics.originaltitle
ORDER BY COUNT(title_episode.episodenumber) DESC