SELECT
    artists.name AS 'Artista'
FROM
    albums
JOIN
    artists ON artists.id = albums.artist_id
GROUP BY
    artists.name
HAVING
    COUNT(albums.artist_id) > 2
ORDER BY
    artists.name
    ASC