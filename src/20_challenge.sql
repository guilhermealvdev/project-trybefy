SELECT
    artists.name AS 'Artista',
    albums.title AS 'Álbum',
    songs.title AS 'Música'
FROM
    songs
JOIN
    albums ON albums.id = songs.album_id
JOIN
    artists ON artists.id = albums.artist_id
WHERE
    artists.name <> 'The Beatles'
ORDER BY
    artists.name,
    albums.title,
    songs.title;