SELECT
    albums.title AS 'Album',
    albums.release_year AS 'Ano de lançamento',
    artists.name AS 'Artista'
FROM
    albums
JOIN
    artists ON artists.id = albums.artist_id
WHERE
    albums.title
    LIKE '%you%';