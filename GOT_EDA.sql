-------------------------------------------------------------------------------------
-- Select all
select * from GOTProject.dbo.GOTDeaths;


-------------------------------------------------------------------------------------
-- Number of deaths
select COUNT([Death No#]) as Deaths
from GOTProject.dbo.GOTDeaths;


-------------------------------------------------------------------------------------
-- Top Killers
SELECT DISTINCT [Killer], COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY [Killer]
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Top killer by house
SELECT DISTINCT [Killer], [Killers House] as House, COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY [Killer], [Killers House]
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Top house by deaths
SELECT DISTINCT [Killers House] as House, COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY [Killers House]
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Top killers by method
SELECT DISTINCT [Killer], [Method], COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY [Killer], [Method]
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Most used methods
SELECT DISTINCT [Method], COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY [Method]
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Episodes with more deaths
SELECT Season, Episode, COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY Season, Episode
ORDER BY Kills DESC


-------------------------------------------------------------------------------------
-- Seasons with more deaths
SELECT Season, COUNT([Death No#]) as Kills
from GOTProject.dbo.GOTDeaths
GROUP BY Season
ORDER BY Kills DESC

