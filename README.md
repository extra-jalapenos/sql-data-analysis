# Assignment Instructions: Data Analysis with SQL
You will be working with the European Soccer Database, a collection of four individual CSV files that you will find in the 2.9.x European Soccer Database.zip compressed folder, containing:
- leagues.csv
- match.csv
- team.csv
- player.csv

Using the abovementioned database, complete the following tasks:

1. Create a new data set called “Final_Exercise” in Google BigQuery and load each csv file as a separate table.
2. Using https://lucid.app/, create a schema that represents the relationship between all the tables:
   1. For each table, write to the left of the variable's name if it is a primary key (PK), a foreign key (FK) or just a simple variable (leave blank).
   2. For each table, write its shape (write the number of rows and columns near the table name).
   3. With a line, link the tables to each other through their keys (when possible).
3. How many days have passed from the oldest Match to the most recent one (dataset time interval)?
4. Produce a table which, for each Season and League Name, shows the following statistics about the home goals scored:
- min
- average
- mid
- range
- max
- sum
Hint: there is no function for the mid-range, research it and calculate it.
Which combination of Season-League has the highest number of goals?
5. Find out how many unique seasons there are in the Match table.
Then write a query that shows, for each Season, the number of matches played by each League. Do you notice anything out of the ordinary?
6. Using Players as the starting point, create a new table (PlayerBMI) and add:
   1. a new variable that represents the players’ weight in kg (divide the mass value by 2.205) and call it kg_weight;
   2. a variable that represents the height in metres (divide the cm value by 100) and call it m_height;
   3. a variable that shows the body mass index (BMI) of the player;
	 Hint: research how to calculate the formula of the BMI
   4. Filter the table to show only the players with an optimal BMI (from 18.5 to 24.9).
   5. How many rows does this table have?
7. How many players do not have an optimal BMI?
8. Which Team has scored the highest total number of goals (home + away) during the most recent available season? How many goals has it scored?
9. Create a query that, for each season, shows the name of the team that ranks first in terms of total goals scored (the output table should have as many rows as the number of seasons).
Which team was the one that ranked first in most of the seasons?
1.  From the query above (question 8) create a new table (TopScorer) containing the top 10 teams in terms of total goals scored (hint: add the team id as well).
Then write a query that shows all the possible “pair combinations” between those 10 teams. How many “pair combinations” did it generate?
