SELECT mc.CountryCode, COUNT(mc.CountryCode) AS [MountainRanges] FROM MountainsCountries as mc
WHERE mc.CountryCode IN ('RU', 'BG', 'US')
GROUP BY mc.CountryCode