SELECT
    artists.name AS 'Artista',
    COUNT(albums.artist_id) AS 'Quantidade de álbuns'
FROM
    albums
JOIN
    artists ON artists.id = albums.artist_id
GROUP BY
    artists.name
ORDER BY
    COUNT(albums.artist_id)
    DESC,
    artists.name;

