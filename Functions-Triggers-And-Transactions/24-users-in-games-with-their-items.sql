SELECT u.Username,
	   g.Name AS [Game],
	   COUNT(g.Name) AS [Items Count],
	   SUM(i.Price) AS [Items Price]
	   FROM UsersGames AS ug
JOIN Users AS u ON ug.UserId = u.Id
JOIN Games AS g ON g.Id = ug.GameId
JOIN UserGameItems AS ugi ON ugi.UserGameId = ug.Id
JOIN Items AS i ON i.Id = ugi.ItemId
GROUP BY u.Username,g.Name
HAVING COUNT(g.Name) >= 10
ORDER BY COUNT(g.Name) DESC, SUM(i.Price) DESC, u.Username