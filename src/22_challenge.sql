SELECT
    artists.name AS 'Artista',
    COUNT(songs.id) AS 'Quantidade de músicas'
FROM
    songs
JOIN
    albums ON songs.album_id = albums.id
JOIN
    artists ON artists.id = albums.artist_id
GROUP BY
    artists.name
ORDER BY
    COUNT(songs.id) DESC, artists.name
LIMIT 3;