SELECT pt.PlayListId,
    pl.Name as plName,
    COUNT(pl.Name) as trackCount
FROM PlaylistTrack pt
LEFT JOIN PlayList pl ON pl.PlayListId=pt.PlayListId
LEFT JOIN Track t On pt.TrackId=t.TrackId
GROUP BY pl.NAME
Order By pl.PlaylistId asc




