Select evn.ID, 
       evn.Name AS Athlete_Name,
	   CASE WHEN SEX = 'M' THEN 'Male' ELSE 'Female' END AS Sex, 
       evn.Age, 
       evn.Height, 
       evn.Weight,
       evn.Team, 
       evn.Year,
       evn.Season, 
       evn.City, 
       evn.Sport,
       evn.Event, 
       CASE WHEN Medal = 'NA' THEN 'Null' ELSE Medal END AS Medal, 
       cou.Region as Country
From [Olympic Games].dbo.athlete_events$ evn
left join [Olympic Games].dbo.country_definitions$ cou
on evn.NOC = cou.NOC
order by ID