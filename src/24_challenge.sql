SELECT
    users.full_name AS 'Nome',
    COUNT(history_play_songs.song_id) AS 'Quantidade de músicas reproduzidas'
FROM
    history_play_songs
JOIN
    users ON history_play_songs.user_id = users.id
GROUP BY
    users.id
ORDER BY
    COUNT(history_play_songs.song_id) DESC,
    users.full_name;