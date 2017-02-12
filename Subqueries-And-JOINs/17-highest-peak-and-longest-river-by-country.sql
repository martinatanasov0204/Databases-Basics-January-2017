SELECT TOP (5) cr.CountryName, 
MAX(p.Elevation) AS [HighestPeakElevation],
MAX(r.Length) AS [LongestRiverLength] 
FROM Countries as cr

LEFT JOIN MountainsCountries as mc ON mc.CountryCode = cr.CountryCode
LEFT JOIN Peaks as p ON p.MountainId = mc.MountainId
LEFT JOIN CountriesRivers as crv ON crv.CountryCode = cr.CountryCode
LEFT JOIN Rivers as r ON r.Id = crv.RiverId

GROUP BY cr.CountryName
ORDER BY [HighestPeakElevation] DESC,  [LongestRiverLength] DESC, cr.CountryName