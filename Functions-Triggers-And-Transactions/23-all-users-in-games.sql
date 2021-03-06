SELECT g.Name AS [Game], 
	   gt.Name AS [Game Type], 
	   u.Username, 
	   ug.Level,
	   ug.Cash, 
	   c.Name
FROM UsersGames AS ug

JOIN Games AS g ON g.Id = ug.GameId
JOIN GameTypes AS gt ON g.GameTypeId = gt.Id
JOIN Users AS u ON u.Id = ug.UserId
JOIN Characters AS c ON c.Id = ug.CharacterId

ORDER BY ug.Level DESC, u.Username, g.Name 