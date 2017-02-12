SELECT TOP (5) CountryName, r.RiverName FROM Countries as c
LEFT JOIN CountriesRivers as cr ON cr.CountryCode = c.CountryCode
LEFT JOIN Rivers as r ON r.Id = cr.RiverId
WHERE c.ContinentCode = 'AF'
ORDER BY c.CountryName