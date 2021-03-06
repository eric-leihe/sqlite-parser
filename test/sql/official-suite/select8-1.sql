-- original: select8.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE songs(songid, artist, timesplayed);
  INSERT INTO songs VALUES(1,'one',1);
  INSERT INTO songs VALUES(2,'one',2);
  INSERT INTO songs VALUES(3,'two',3);
  INSERT INTO songs VALUES(4,'three',5);
  INSERT INTO songs VALUES(5,'one',7);
  INSERT INTO songs VALUES(6,'two',11)
;SELECT DISTINCT artist,sum(timesplayed) AS total      
  FROM songs      
  GROUP BY LOWER(artist)
;SELECT DISTINCT artist,sum(timesplayed) AS total      
    FROM songs      
    GROUP BY LOWER(artist)      
    LIMIT 1 OFFSET 1
;SELECT DISTINCT artist,sum(timesplayed) AS total      
    FROM songs      
    GROUP BY LOWER(artist)      
    LIMIT 2 OFFSET 1
;SELECT DISTINCT artist,sum(timesplayed) AS total      
    FROM songs      
    GROUP BY LOWER(artist)      
    LIMIT -1 OFFSET 2;