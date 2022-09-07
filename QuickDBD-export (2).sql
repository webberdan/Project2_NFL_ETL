-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Stadium" (
    "StadiumID" int   NOT NULL,
    "Home_Team_Name" string   NOT NULL,
    "City" string   NOT NULL,
    "State" string   NOT NULL,
    "Country" string   NOT NULL,
    "Capacity" VARCHAR   NOT NULL,
    "PlayingSurface" VARCHAR   NOT NULL,
    "GeoLat" float   NOT NULL,
    "GeoLong" float   NOT NULL,
    "Type" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Stadium" PRIMARY KEY (
        "StadiumID"
     )
);

CREATE TABLE "TeamDataCleanDF" (
    "home_team" VARCHAR   NOT NULL,
    "TeamID" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Conference" VARCHAR   NOT NULL,
    "Division" VARCHAR   NOT NULL,
    "FullName" VARCHAR   NOT NULL,
    "StadiumID" VARCHAR   NOT NULL,
    "2022_HeadCoach" VARCHAR   NOT NULL,
    "2022_OffensiveCoordinator" VARCHAR   NOT NULL,
    "2022_DefensiveCoordinator" VARCHAR   NOT NULL,
    "2022_SpecialTeamsCoach" VARCHAR   NOT NULL,
    "2022_OffensiveScheme" VARCHAR   NOT NULL,
    "2022_DefensiveScheme" VARCHAR   NOT NULL,
    "UpcomingFanDuelSalary" VARCHAR   NOT NULL,
    "UpcomingDraftKingsSalary" VARCHAR   NOT NULL,
    "UpcomingYahooSalary" VARCHAR   NOT NULL,
    "PrimaryColor" VARCHAR   NOT NULL,
    "SecondaryColor" VARCHAR   NOT NULL,
    "TertiaryColor" VARCHAR   NOT NULL,
    "QuaternaryColor" VARCHAR   NOT NULL,
    "GlobalTeamID" VARCHAR   NOT NULL,
    "DraftKingsName" VARCHAR   NOT NULL,
    "DraftKingsPlayerID" VARCHAR   NOT NULL,
    "FanDuelName" VARCHAR   NOT NULL,
    "FanDuelPlayerID" VARCHAR   NOT NULL,
    "FantasyDraftName" VARCHAR   NOT NULL,
    "FantasyDraftPlayerID" VARCHAR   NOT NULL,
    "YahooName" VARCHAR   NOT NULL,
    "YahooPlayerID" VARCHAR   NOT NULL
);

CREATE TABLE "GameDataDF" (
    "season" VARCHAR   NOT NULL,
    "game_type" VARCHAR   NOT NULL,
    "week" VARCHAR   NOT NULL,
    "gameday" VARCHAR   NOT NULL,
    "weekday" VARCHAR   NOT NULL,
    "gametime" VARCHAR   NOT NULL,
    "away_team" VARCHAR   NOT NULL,
    "away_score" VARCHAR   NOT NULL,
    "home_team" VARCHAR   NOT NULL,
    "home_score" VARCHAR   NOT NULL,
    "location" VARCHAR   NOT NULL,
    "result" VARCHAR   NOT NULL,
    "total" VARCHAR   NOT NULL,
    "overtime" VARCHAR   NOT NULL,
    "div_game" VARCHAR   NOT NULL,
    "temp" VARCHAR   NOT NULL,
    "wind" VARCHAR   NOT NULL,
    "away_qb_id" VARCHAR   NOT NULL,
    "home_qb_id" VARCHAR   NOT NULL,
    "away_qb_name" VARCHAR   NOT NULL,
    "home_qb_name" VARCHAR   NOT NULL,
    "away_coach" VARCHAR   NOT NULL,
    "home_coach" VARCHAR   NOT NULL,
    "referee" VARCHAR   NOT NULL
);

ALTER TABLE "Stadium" ADD CONSTRAINT "fk_Stadium_StadiumID" FOREIGN KEY("StadiumID")
REFERENCES "TeamDataCleanDF" ("StadiumID");

ALTER TABLE "GameDataDF" ADD CONSTRAINT "fk_GameDataDF_home_team" FOREIGN KEY("home_team")
REFERENCES "TeamDataCleanDF" ("home_team");

CREATE INDEX "idx_Stadium_Home_Team_Name"
ON "Stadium" ("Home_Team_Name");

