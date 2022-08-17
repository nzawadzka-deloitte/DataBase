CREATE TRIGGER newepisode AFTER INSERT ON title_basics
FOR EACH ROW
EXECUTE PROCEDURE addingepisode();

CREATE OR REPLACE FUNCTION addingepisode() RETURNS TRIGGER AS $addingepisode$
BEGIN
    INSERT INTO title_episode (tconst, parenttconst, seasonnumber, episodenumber)
    VALUES ('tt82611171','tt8261118','1','3');
    RETURN NULL;
END;
$addingepisode$ LANGUAGE 'plpgsql';

INSERT INTO title_basics (tconst, titletype, primarytitle, originaltitle, startyear, genres)
VALUES ('tt8261118', 'movie', 'Natalka', 'Natalka','2000','Sport' );


SELECT *
FROM title_basics
WHERE tconst = 'tt8261118';



SELECT *
FROM title_episode
WHERE parenttconst='tt8261118';