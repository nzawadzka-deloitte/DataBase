CREATE TRIGGER deleteepisode AFTER DELETE ON title_episode
FOR EACH ROW
EXECUTE PROCEDURE lowrating();

CREATE OR REPLACE FUNCTION lowrating() RETURNS TRIGGER AS $lowrating$
BEGIN
    UPDATE title_ratings 
    SET averagerating = CAST((CAST(averagerating AS decimal) -1) AS VARCHAR(80));
    RETURN NULL;
END;
$lowrating$ LANGUAGE 'plpgsql';

DELETE FROM title_episode WHERE tconst='tt0107602';

SELECT *
FROM title_episode te
JOIN title_ratings tr ON te.tconst=tr.tconst;