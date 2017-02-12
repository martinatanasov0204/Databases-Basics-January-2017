SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation FROM Mountains as m
JOIN Peaks as p ON p.MountainId = m.Id
JOIN MountainsCountries as mc ON mc.MountainId = m.Id
JOIN Countries as c ON mc.CountryCode = c.CountryCode
WHERE p.Elevation > 2835 AND c.CountryCode = 'BG'
ORDER BY p.Elevation DESC