SELECT
    t.Name track,
    al.Title album,
    mt.Name Media,
    g.Name genre
From Track t
Join Album al ON al.AlbumId=t.AlbumId
Join MediaType mt ON mt.MediaTypeId=t.MediaTypeId
Join Genre g ON g.GenreId=t.GenreId