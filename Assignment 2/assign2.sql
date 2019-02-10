DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
	Incredibles2 integer,
	AvengerInfinityWar integer,
 	BlackPanther integer,
 	BirdBox	integer,
 	AQuietPlace	integer,
	CrazyRichAsians integer
);

INSERT INTO movies (Incredibles2, AvengerInfinityWar, BlackPanther, BirdBox, AQuietPlace, CrazyRichAsians)
VALUES (3, 5, 5, 3, 3, 4),
(3, 3, 3, 4, 3, 3),
(3, 5, 5, 3, 3, 4),
(5, 4, 2, 4, 5, 2),
(3, 5, 5, 3, 3, 4),
(3, 3, 3, 3, 3, 3),
(3, 4, 5, 5, 5, 3),
(3, 4, 5, 5, 5, 3),
(5, 5, 5, 4, 3, 5),
(5, 5, 5, 4, 3, 5),
(5, 5, 5, 4, 3, 5),
(3, 5, 5, 4, 4, 4),
(4, 4, 5, 5, 5, 5),
(1, 2, 3, 4, 5, 2),
(5, 1, 2, 2, 4, 3);

SELECT * FROM movies