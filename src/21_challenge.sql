SELECT
    albums.title AS 'Álbum',
    SUM(songs.duration_in_seconds) AS 'Duração'
FROM
    songs
JOIN
    albums ON songs.album_id = albums.id
GROUP BY
    albums.title
ORDER BY
    SUM(songs.duration_in_seconds)
    DESC;