# Project-Group-5
## Group Participants
* Bob Pickerel
* Fannie Polcari
* Lennox Nguyen
* Daniel Webber
* Brian Hall
* Kafayat Lawal

## Data Sources
* "Team Data" API Call on <a href = "https://sportsdata.io/developers/data-dictionary/nfl">Team Data</a>
* "Stadium Data" API Call on <a href = "https://sportsdata.io/developers/data-dictionary/nfl">Stadium Data</a>
* "Historical NFL Game" Dataset <a href = "http://www.habitatring.com/games.csv">Historical NFL Game Data</a>

## Description
The goal of the project is to create a database of historical NFL game data. The requirement of the database is to give home team data, stadium data for the home team, as well as a high level summary of game statistics. The dataset is compiled for the 2018-2021 seasons. 

## Rough Breakdown of Tasks
### 1. Extract: indicates the original data sources and how the data were formatted at a professional level
After our team came up with the topic of wanting to look at NFL season and Team Data, we began to formulate ideas centered around how we would look at the data, where we would gather the data, and if it was important to compare the data. Initially, the team thought it would be cool to compare weather data against home games, and wins/losses for teams but we quickly realized the goal was not how to compare the data but more about gathering data and joining the data. After establishing our objectives, we googled different websites and tried to find data readily available. We first found nflgamedata.com that broke down NFL games by calendar year, then months, and finally days. What this was able to show us was the granular detail of any day of the year when a football game was played, at what time it occurred, and which teams were competing. Armed with this level of detail dating back to 1999 to present, which showed 6410 rows of data across 45 columns, we knew the next big goal was to try to find other data that would have some similarities in NFL data that we could join. Further research landed us on sportsdata.io a developer site with dictionaries of data. We performed two separate API calls here two collect more NFL data; one was stadium data for different NFL stadiums that included information like, the city, state, country, capacity, geolocation, etc. Our second API call again to the sportsdata.io pulled related NFL team data which included the team  name, location by city, the conference they played in, division, roster information from players to coaches, stadium details, and more. Because the data was expansive, and in some cases not complete for all years our team decided to focus our attention on the years 2018-2021.

### 2. Transform: explains what data clearing or transformation was required at a professional level
After data was pulled from the api’s and loaded into DataFrames, certain columns were dropped so that the final dataset contained any information relevant for analysis on stadium / team data pertaining to games played historically. Dropped columns included things such as: “upcoming opponent”, “wikipedia word mark url”, and “playerID” as these attributes were not relevant to the game in question. Data on games up to 20 years back was available although the final dataset was narrowed down to 2018 through 2021. Datasets were made sure to have columns which aligned for later joining in our final database.

### 3. Load: explains the final database, tables/collections, and why the topic was chosen at a professional level

To create the Quick DBD, we had to identify and relate the columns from the Team Data, Stadium Data, and Historical NFL Game Data.

<img src = "QuickDBD-export (1).png" width = "750">

To create the final Database, we had to build SQL Database using PostgreSQL, import data, and then execute table joins via query.

<img src = "project2 database screenshot.png" width = "1000">




