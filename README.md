# Olympic-Game-Analysis

## Overview

This is an exercise to analyze the Olympic dataset using Power BI with the objectives of analyse and visualize how countries and athletes have performed historically, such as 
1.	Compare the number of female and male athletes over time.
2.	Analyze the number of athletes of each country over time.
3.	Analyze the number of bronze, silver, gold medals of each country over time.
4.	Analyze the number of bronze, silver, gold medals of each athlete.
5.	Visualize the number of medals by sports in total.

The simple schema consisting of two tables, which are available on 

https://www.mavenanalytics.io/data-playground 

<b> Table 1 </b>  athlete_events contains 120 years of Olympic games, from Athens 1896 to Rio 2016. It has 271,116 rows. Each row records an individual athlete competing in an individual event, including the athlete's ID, name, sex, age, height, weight, team, and medal, and the event's name, sport, games, year, and city. Each athlete has a unique ID. 

<b> Table 2 </b>   country_definitions, is the look up table of Table 1, contains the full name of each country.

## Steps:

<b>First Step:</b>

Data cleaning and transformation using SQL, such as selecting necessary columns for the analysis, renaming columns for easy understanding, using Case When to explain abbreviation, using left join to look up county name in the country definition table.  

<b>Second Step:</b>

Import data from SQL Server to Power BI (Directquery is used). Then create three measures. The first one is total number of athletes using Distinctcount. The second one is total number of medals using count and filter. The third one is the number of each medal. The DAX is written as 
<img src="https://github.com/Annie-The-Analyst/Olympic-Game-Analysis/blob/main/medals_DAX.JPG" alt="max of medals">

<b>Last Step:</b>

Choose the appropriate chart types to display the answers. 
For example, Slicers charts are used as visual filters of country, year, sex, season, sport, and athlete. 
Area chart is used for “# of Medal by Year”. It compares the three quantitative graphical data (the number of bronze, silver, gold medals), and shows the trend changes over time. 
Matrix chart is used for “# of Medal by Sport”. It represents the number of bronze, silver, gold medals in different sports with total for each row and grand total. 

## Conclusion

<p><a href="https://github.com/Annie-The-Analyst/Olympic-Game-Analysis/blob/main/Olympic%20Game%20Analysis.pdf/">Please see the visualization in PDF file!</a></p>
