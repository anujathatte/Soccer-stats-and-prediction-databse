create database Project_Team8;

use Project_Team8;


 CREATE TABLE CoachDetails
(
CoachID INT PRIMARY KEY, 
FirstName VARCHAR(100),
LastName VARCHAR(100),
Age INT,
Nationality VARCHAR(100),
Club VARCHAR(100)
);


 ==========================
 
 CREATE TABLE TeamRecords
(TeamID INT PRIMARY KEY,
NoOfGamesWonasTeam INT,
NoOfGamesLostasTeam INT,
Penalties INT,
CoachID INT NOT NULL 
REFERENCES CoachDetails(CoachID)
);



=====================================

CREATE TABLE TournamentDetails
(TournamentId INT PRIMARY KEY,
Years INT,
Duration INT,
LevelofTournament VARCHAR(100),
TypeofTournament VARCHAR(100),
Place VARCHAR(100),
CoachID INT NOT NULL 
REFERENCES CoachDetails(CoachID)
);


================================
CREATE TABLE PlayerDetails
(PlayerID INT PRIMARY KEY, 
FirstName VARCHAR(100),
LastName VARCHAR(100),
Nationality VARCHAR(100),
Club VARCHAR(100),
TeamID INT NOT NULL
REFERENCES TeamRecords(TeamID),
 DateOfBirth DATE,  
 InternationalStanding INT,
TournamentId INT NOT NULL
REFERENCES TournamentDetails(TournamentId)); 


====================================

 CREATE TABLE PlayerSkills
(PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID),
PlayerSkills VARCHAR(100)
); 


====================================

 CREATE TABLE PreferedPosition
(PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID), 
PreferedPosition VARCHAR(100)
LastModified datetime;
); 
 

====================================

CREATE TABLE PlayerFitness
(PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID), 
Height FLOAT,
Weight FLOAT,
BodyType VARCHAR(100),
WorkRate VARCHAR(100),
AverageJumpHeight FLOAT,
Injury VARCHAR(100),
RecoveryRate FLOAT); 


====================================

CREATE TABLE CaptainDetails
(PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID), 
TournamentId INT NOT NULL
REFERENCES TournamentDetails(TournamentId),
NumOfGamesWon INT,
NumOfGamesLost INT,
LevelOfTournament VARCHAR(100),
TypeOfTournament VARCHAR(100),
NumofYears INT); 



===================================

CREATE TABLE RefreeDetails
(RefereeID INT NOT NULL,
FirstName VARCHAR(100),
LastName VARCHAR(100),
TournamentId INT NOT NULL
REFERENCES TournamentDetails(TournamentId),
Age INT,
Nationality VARCHAR(100),
Club VARCHAR(100)); 


====================================

CREATE TABLE PenaltyShootoutDetails
(TeamID INT NOT NULL
REFERENCES TeamRecords(TeamID),
PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID), 
TournamentId INT NOT NULL
REFERENCES TournamentDetails(TournamentId),
GoalScore INT,
PenaltyType VARCHAR(100)
);


=====================================

CREATE TABLE Goalkeeper
(
PlayerID INT NOT NULL
REFERENCES PlayerDetails(PlayerID), 
DivingSkills VARCHAR(100),
HandlingSkills VARCHAR(100),
Kicking VARCHAR(100),
Reflexes VARCHAR(100),
Speed FLOAT,
Positioning VARCHAR(100));

==================================

CREATE TABLE CoachRecords
(
CoachID INT NOT NULL 
REFERENCES CoachDetails(CoachID),
NumOfGamesWonasCoach INT,
NumOfGamesLostasCoach INT,
InternationalStandings INT,
NumOfGames INT,
Position_playedin VARCHAR(100)

);

==================================

CREATE TABLE PlayerGameRecord
(PlayerId INT 
REFERENCES PlayerDetails(PlayerID),
NumOfGamesPlayed INT,
NumOfGoalsScored INT,
NumOfGamesWonAsPlayer INT,
NumOfGamesLostAsPlayer INT);
=================================================


----------------CoachDetails----------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
123, 'Kliff', 'Kingsbury', 40, 'Argentina', 'FC Barcelona'
);

/* INSERT QUERY NO: 2 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
114, 'Arthur', 'Smith', 36, 'Spain ', 'Real Madrid'
);

/* INSERT QUERY NO: 3 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
138, 'John', 'Harbaugh', 42, 'Argentina', 'FC Barcelona'
);

/* INSERT QUERY NO: 4 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
137, 'Sean', 'McDermott', 45, 'Croatia', 'Chelsea'
);

/* INSERT QUERY NO: 5 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
118, 'Matt', 'Rhule', 47, 'Brazil', 'FC Barcelona'
);

/* INSERT QUERY NO: 6 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
157, 'Matt', 'Nagy', 44, 'Argentina', 'Arsenal'
);

/* INSERT QUERY NO: 7 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
124, 'Zac', 'Taylor', 38, 'Spain ', 'FC Barcelona'
);

/* INSERT QUERY NO: 8 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
158, 'Kevin', 'Stefanski', 37, 'Spain ', 'FC Barcelona'
);

/* INSERT QUERY NO: 9 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
134, 'Mike', 'McCarthy', 36, 'Croatia', 'Chelsea'
);

/* INSERT QUERY NO: 10 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
113, 'Vic', 'Fangio', 36, 'Brazil', 'FC Barcelona'
);

/* INSERT QUERY NO: 11 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
146, 'Dan', 'Campbell', 42, 'Argentina', 'Real Madrid'
);

/* INSERT QUERY NO: 12 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
128, 'Matt', 'LaFleur', 43, 'Spain ', 'FC Barcelona'
);

/* INSERT QUERY NO: 13 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
130, 'David', 'Culley', 40, 'Brazil', 'Arsenal'
);

/* INSERT QUERY NO: 14 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
117, 'Frank', 'Reich', 41, 'Croatia', 'Real Madrid'
);

/* INSERT QUERY NO: 15 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
160, 'Urban', 'Meyer', 39, 'Brazil', 'FC Barcelona'
);

/* INSERT QUERY NO: 16 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
126, 'Andy', 'Reid', 38, 'Brazil', 'Real Madrid'
);

/* INSERT QUERY NO: 17 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
148, 'Richard', 'Bisaccia', 37, 'Argentina', 'FC Barcelona'
);

/* INSERT QUERY NO: 18 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
192, 'Brandon', 'Staley', 39, 'Spain ', 'Arsenal'
);

/* INSERT QUERY NO: 19 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
172, 'Sean', 'McVay', 40, 'Brazil', 'Real Madrid'
);

/* INSERT QUERY NO: 20 */
INSERT INTO CoachDetails(CoachID, FirstName, LastName, Age, Nationality, Club)
VALUES
(
199, 'Brian', 'Flores', 36, 'Croatia', 'FC Barcelona'
);


---------------------------------------------------TeamRecord------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1001, 221, 113, 56, 123
);

/* INSERT QUERY NO: 2 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1002, 387, 223, 46, 114
);

/* INSERT QUERY NO: 3 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1003, 229, 114, 71, 138
);

/* INSERT QUERY NO: 4 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1004, 333, 220, 62, 137
);

/* INSERT QUERY NO: 5 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1005, 246, 131, 49, 118
);

/* INSERT QUERY NO: 6 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1006, 342, 218, 32, 157
);

/* INSERT QUERY NO: 7 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1007, 281, 134, 29, 124
);

/* INSERT QUERY NO: 8 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1008, 382, 236, 54, 158
);

/* INSERT QUERY NO: 9 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1009, 248, 115, 38, 134
);

/* INSERT QUERY NO: 10 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1010, 327, 235, 77, 113
);

/* INSERT QUERY NO: 11 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1011, 277, 126, 22, 146
);

/* INSERT QUERY NO: 12 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1012, 385, 237, 68, 128
);

/* INSERT QUERY NO: 13 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1013, 243, 132, 27, 130
);

/* INSERT QUERY NO: 14 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1014, 372, 238, 33, 117
);

/* INSERT QUERY NO: 15 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1015, 223, 116, 47, 160
);

/* INSERT QUERY NO: 16 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1016, 379, 233, 57, 126
);

/* INSERT QUERY NO: 17 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1017, 256, 119, 34, 148
);

/* INSERT QUERY NO: 18 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1018, 322, 224, 74, 192
);

/* INSERT QUERY NO: 19 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1019, 255, 117, 67, 172
);

/* INSERT QUERY NO: 20 */
INSERT INTO TeamRecords(TeamID, NoOfGamesWonasTeam, NoOfGamesLostasTeam, Penalties, CoachID)
VALUES
(
1020, 353, 222, 51, 199
);
-----------------------------------------------------------------------TournamentDetails----------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
11, 2018, 3, 'pro', 'International', 'Ukraine ', 123
);

/* INSERT QUERY NO: 2 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
12, 2019, 4, 'pro', 'International', 'Spain', 114
);

/* INSERT QUERY NO: 3 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
13, 2017, 3, 'pro', 'International', 'Italy', 138
);

/* INSERT QUERY NO: 4 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
14, 2020, 4, 'pro', 'International', 'England', 124
);

/* INSERT QUERY NO: 5 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
15, 2012, 3, 'pro', 'International', 'Germany', 199
);

/* INSERT QUERY NO: 6 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
16, 2017, 4, 'pro', 'International', 'Rome', 128
);

/* INSERT QUERY NO: 7 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
17, 2016, 3, 'pro', 'International', 'Austria', 137
);

/* INSERT QUERY NO: 8 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
18, 2015, 4, 'pro', 'International', 'Prague', 118
);

/* INSERT QUERY NO: 9 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
19, 2014, 4, 'pro', 'International', 'Berlin', 146
);

/* INSERT QUERY NO: 10 */
INSERT INTO TournamentDetails(TournamentID, Years, Duration, LevelofTournament, TypeofTournament, Place, CoachID)
VALUES
(
20, 2021, 4, 'pro', 'International', 'Madrid', 130
);

------------------------------------------------------------------------PlayerDetails-------------------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
100, 'Lionel', 'Messi Cuccittini', 'Argentina', 'FC Barcelona', 1001, '1987-06-24', 3, 11
);

/* INSERT QUERY NO: 2 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
101, 'Luis', 'Alberto', 'Uruguay', 'FC Barcelona', 1001, '1987-01-24', 10, 11
);

/* INSERT QUERY NO: 3 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
102, 'Neymar', 'Da Silva Santos Junior', 'Brazil', 'FC Barcelona', 1001, '1992-02-05', 16, 11
);

/* INSERT QUERY NO: 4 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
103, 'Xavier', 'Herna¡ndez Creus', 'Spain', 'FC Barcelona', 1001, '1980-01-25', 15, 11
);

/* INSERT QUERY NO: 5 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
104, 'Sergio', 'Burgos', 'Spain', 'FC Barcelona', 1001, '1988-07-16', 2, 11
);

/* INSERT QUERY NO: 6 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
105, 'Piquac', 'Xavier Hernajndez', 'Spain', 'FC Barcelona', 1001, '1987-02-02', 6, 11
);

/* INSERT QUERY NO: 7 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
106, 'Pedro', 'Eliezer Ledesma', 'Spain', 'FC Barcelona', 1001, '1987-07-28', 20, 11
);

/* INSERT QUERY NO: 8 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
107, 'Ivan', 'Rakitia', 'Croatia', 'FC Barcelona', 1001, '1988-03-10', 22, 11
);

/* INSERT QUERY NO: 9 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
108, 'Javier', 'Alejandro Mascherano', 'Argentina', 'FC Barcelona', 1001, '1984-06-08', 4, 11
);

/* INSERT QUERY NO: 10 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
109, 'Daniel', 'Alves da Silva', 'Brazil', 'FC Barcelona', 1001, '1983-05-06', 13, 11
);

/* INSERT QUERY NO: 11 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
110, 'Claudio', 'Bravo', 'Chile', 'FC Barcelona', 1001, '1983-04-13', 17, 11
);

/* INSERT QUERY NO: 12 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
111, 'Marc', 'Stegen', 'Germany', 'FC Barcelona', 1001, '1992-04-30', 24, 11
);

/* INSERT QUERY NO: 13 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
112, 'Jordi Alba', 'Alba Ramos', 'Spain', 'FC Barcelona', 1001, '1989-03-21', 8, 11
);

/* INSERT QUERY NO: 14 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
113, 'Jacracmy', 'Mathieu', 'France', 'FC Barcelona', 1001, '1983-10-29', 12, 11
);

/* INSERT QUERY NO: 15 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
114, 'Thomas', 'Vermaelen', 'Belgium', 'FC Barcelona', 1001, '1985-11-14', 9, 12
);

/* INSERT QUERY NO: 16 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
115, 'Rafinha', 'Nascimento', 'Brazil', 'FC Barcelona', 1001, '1993-02-12', 27, 12
);

/* INSERT QUERY NO: 17 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
116, 'Montoya', 'Torralbo', 'Spain', 'FC Barcelona', 1001, '1991-04-14', 11, 12
);

/* INSERT QUERY NO: 18 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
117, 'Marc', 'Bartra Aregall', 'Spain', 'FC Barcelona', 1001, '1991-01-15', 30, 12
);

/* INSERT QUERY NO: 19 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
118, 'Adriano', 'Correia Claro', 'Brazil', 'FC Barcelona', 1001, '1984-10-26', 34, 12
);

/* INSERT QUERY NO: 20 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
119, 'Sergi', 'Roberto Carnicer', 'Spain', 'FC Barcelona', 1001, '1992-02-07', 14, 12
);

/* INSERT QUERY NO: 21 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
120, 'Jordi', 'Masip', 'Spain', 'FC Barcelona', 1001, '1989-01-03', 25, 12
);

/* INSERT QUERY NO: 22 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
121, 'Douglas', 'Pereira dos Santos', 'Brazil', 'FC Barcelona', 1001, '1990-08-06', 40, 12
);

/* INSERT QUERY NO: 23 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
122, 'Sandro', 'Ramarez Castillo', 'Spain', 'FC Barcelona', 1001, '1995-07-09', 37, 12
);

/* INSERT QUERY NO: 24 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
123, 'Munir', 'El Haddadi', 'Spain', 'FC Barcelona', 1001, '1995-09-01', 29, 12
);

/* INSERT QUERY NO: 25 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
124, 'Cristiano', 'Ronaldo', 'Portugal', 'FC Barcelona', 1002, '1985-02-05', 1, 12
);

/* INSERT QUERY NO: 26 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
125, 'Gareth', 'Frank Bale', 'Wales', 'FC Barcelona', 1002, '1989-07-16', 5, 12
);

/* INSERT QUERY NO: 27 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
126, 'Sergio', 'Ramos', 'Spain', 'FC Barcelona', 1002, '1986-03-30', 46, 12
);

/* INSERT QUERY NO: 28 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
127, 'Luka', 'Modriaa', 'Croatia', 'FC Barcelona', 1002, '1985-09-09', 52, 12
);

/* INSERT QUERY NO: 29 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
128, 'James', 'David', 'Colombia', 'Real Madrid', 1002, '1991-07-12', 42, 12
);

/* INSERT QUERY NO: 30 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
129, 'Toni', 'Kroos', 'Germany', 'Real Madrid', 1002, '1990-01-04', 54, 12
);

/* INSERT QUERY NO: 31 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
130, 'Karim', 'Benzema', 'France', 'Real Madrid', 1002, '1987-12-19', 47, 12
);

/* INSERT QUERY NO: 32 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
131, 'Sami', 'Khedira', 'Germany', 'Real Madrid', 1002, '1987-04-04', 31, 12
);

/* INSERT QUERY NO: 33 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
132, 'Casillas', 'Iker', 'Spain', 'Real Madrid', 1002, '1981-05-20', 52, 12
);

/* INSERT QUERY NO: 34 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
133, 'Isco', 'Francisco', 'Spain', 'Real Madrid', 1002, '1992-04-21', 57, 12
);

/* INSERT QUERY NO: 35 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
134, 'Pepe', 'Laveran', 'Portugal', 'Real Madrid', 1002, '1983-02-26', 48, 12
);

/* INSERT QUERY NO: 36 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
135, 'Marcelo', 'Vieira da Silva', 'Brazil', 'Real Madrid', 1002, '1988-05-12', 51, 12
);

/* INSERT QUERY NO: 37 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
136, 'Ralpha', 'Varane', 'France', 'Real Madrid', 1002, '1993-04-25', 56, 11
);

/* INSERT QUERY NO: 38 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
137, 'Javier', 'Herna¡ndez', 'Mexico', 'Real Madrid', 1002, '1988-06-01', 23, 11
);

/* INSERT QUERY NO: 39 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
138, 'Illarramendi', 'Asier', 'Spain', 'Real Madrid', 1002, '1990-03-08', 43, 11
);

/* INSERT QUERY NO: 40 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
139, 'Carvajal', 'Daniel', 'Spain', 'Real Madrid', 1002, '1992-01-11', 38, 11
);

/* INSERT QUERY NO: 41 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
140, 'Fajbio', 'Alexandre da Silva', 'Portugal', 'Real Madrid', 1002, '1988-03-11', 57, 11
);

/* INSERT QUERY NO: 42 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
141, 'Keylor', 'Navas', 'Costa Rica', 'Real Madrid', 1002, '1986-12-15', 29, 11
);

/* INSERT QUERY NO: 43 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
142, 'Arbeloa', 'Coca', 'Spain', 'Real Madrid', 1002, '1983-01-17', 55, 11
);

/* INSERT QUERY NO: 44 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
143, 'Jesa', ' Rodriguez', 'Spain', 'Real Madrid', 1002, '1993-02-26', 33, 11
);

/* INSERT QUERY NO: 45 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
144, 'Nacho', 'Fernandez', 'Spain', 'Real Madrid', 1002, '1990-01-18', 26, 11
);

/* INSERT QUERY NO: 46 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
145, 'Diego', 'Javier', 'Spain', 'Real Madrid', 1002, '1993-08-16', 49, 12
);

/* INSERT QUERY NO: 47 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
146, 'Derik', 'Osede Prieto', 'Spain', 'Real Madrid', 1002, '1993-02-21', 53, 12
);

/* INSERT QUERY NO: 48 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
147, 'Burgui', 'Jorge Franco', 'Spain', 'Real Madrid', 1002, '1993-10-29', 45, 12
);

/* INSERT QUERY NO: 49 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
148, 'Tomas', 'Raul de ', 'Spain', 'Real Madrid', 1002, '1994-10-17', 31, 12
);

/* INSERT QUERY NO: 50 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
149, 'Eero', 'Markkanen', 'Finland', 'Real Madrid', 1002, '1991-07-03', 21, 12
);

/* INSERT QUERY NO: 51 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
150, 'Medrajn', 'Alvaro', 'Spain', 'Real Madrid', 1002, '1994-03-15', 18, 12
);

/* INSERT QUERY NO: 52 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
151, 'Orlando', 'Ruben', 'Spain', 'Real Madrid', 1002, '1993-10-12', 50, 11
);

/* INSERT QUERY NO: 53 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
152, 'Aguza', 'Sergio', 'Spain', 'Real Madrid', 1002, '1992-09-02', 41, 11
);

/* INSERT QUERY NO: 54 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
153, 'Pacheco', 'Fernando', 'Spain', 'Real Madrid', 1002, '1992-05-18', 7, 11
);

/* INSERT QUERY NO: 55 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
154, 'Enzo', 'Alan Zidane', 'Spain', 'Real Madrid', 1002, '1995-03-24', 39, 11
);

/* INSERT QUERY NO: 56 */
INSERT INTO PlayerDetails(PlayerID, Firstname, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
155, 'Guillermo', 'Varela', 'Uruguay', 'Real Madrid', 1002, '1993-03-24', 44, 11
);

/* INSERT QUERY NO: 1 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
156, 'Hazard', 'Eden', 'Belgium', 'Chelsea', 1003, '1991-01-07', 72, 11
);

/* INSERT QUERY NO: 2 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
157, 'Courtois', 'Thibaut', 'Belgium', 'Chelsea', 1003, '1992-05-11', 70, 11
);

/* INSERT QUERY NO: 3 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
158, 'Diego', 'Costa da Silva', 'Spain', 'Chelsea', 1003, '1988-10-07', 73, 11
);

/* INSERT QUERY NO: 4 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
159, 'Schick', 'Patrik', 'Czech Republic', 'Chelsea', 1003, '1982-05-20', 74, 11
);

/* INSERT QUERY NO: 5 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
160, 'Oscar', 'Santos Emboaba', 'Brazil', 'Chelsea', 1003, '1991-09-09', 111, 11
);

/* INSERT QUERY NO: 6 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
161, 'Cesc', 'Francesc', 'Spain', 'Chelsea', 1003, '1987-05-04', 138, 11
);

/* INSERT QUERY NO: 7 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
162, 'J. Terry', 'John', 'England', 'Chelsea', 1003, '1980-12-07', 90, 11
);

/* INSERT QUERY NO: 8 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
163, 'Matic', 'Nemanja', 'Serbia', 'Chelsea', 1003, '1988-08-01', 81, 11
);

/* INSERT QUERY NO: 9 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
164, 'Willian', 'Borges da Silva', 'Brazil', 'Chelsea', 1003, '1988-08-09', 93, 11
);

/* INSERT QUERY NO: 10 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
165, 'Filipe Luis', 'Kasmirski', 'Brazil', 'Chelsea', 1003, '1985-08-09', 91, 11
);

/* INSERT QUERY NO: 11 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
166, 'Christensen', 'Andreas', 'Germany', 'Chelsea', 1003, '1990-11-06', 112, 11
);

/* INSERT QUERY NO: 12 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
167, 'Ramires', 'Santos do Nascimento', 'Brazil', 'Chelsea', 1003, '1987-03-24', 79, 11
);

/* INSERT QUERY NO: 13 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
168, 'D. Drogba', 'Didier Yves Tacbily', 'Ivory Coast', 'Chelsea', 1003, '1978-03-11', 92, 11
);

/* INSERT QUERY NO: 14 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
169, 'G. Cahill', 'Gary ', 'England', 'Chelsea', 1003, '1985-12-19', 94, 11
);

/* INSERT QUERY NO: 15 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
170, 'Ivanovic', 'Branislav', 'Serbia', 'Chelsea', 1003, '1984-02-22', 83, 11
);

/* INSERT QUERY NO: 16 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
171, 'Racmy', 'Loac', 'France', 'Chelsea', 1003, '1987-01-02', 101, 11
);

/* INSERT QUERY NO: 17 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
172, 'Azpilicueta', 'Cesar Tanco', 'Spain', 'Chelsea', 1003, '1989-08-28', 89, 11
);

/* INSERT QUERY NO: 18 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
173, 'John Mikel', 'Nchekwube Obinna', 'Nigeria', 'Chelsea', 1003, '1987-04-22', 95, 11
);

/* INSERT QUERY NO: 19 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
174, 'M. Salah', 'Mohamed Ghaly', 'Egypt', 'Chelsea', 1003, '1992-06-15', 96, 11
);

/* INSERT QUERY NO: 20 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
175, 'M. Schwarzer', 'Mark', 'Australia', 'Chelsea', 1003, '1972-10-06', 82, 12
);

/* INSERT QUERY NO: 21 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
176, 'K. Zouma', 'Kurt Happy', 'France', 'Chelsea', 1003, '1994-10-27', 98, 12
);

/* INSERT QUERY NO: 22 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
177, 'N. Aka', 'Nathan', 'Netherlands', 'Chelsea', 1003, '1995-02-18', 97, 12
);

/* INSERT QUERY NO: 23 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
178, 'T. Kane', 'Todd', 'England', 'Chelsea', 1003, '1993-09-17', 80, 12
);

/* INSERT QUERY NO: 24 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
179, 'K. Palmer', 'Kasey', 'England', 'Chelsea', 1003, '1996-11-09', 99, 12
);

/* INSERT QUERY NO: 25 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
180, 'I. Brown', 'Isaiah', 'England', 'Chelsea', 1003, '1997-01-07', 106, 12
);

/* INSERT QUERY NO: 26 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
181, 'J. Boga', 'Jeremie', 'France', 'Chelsea', 1003, '1997-01-03', 100, 12
);

/* INSERT QUERY NO: 27 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
182, 'L. Baker', 'Lewis', 'England', 'Chelsea', 1003, '1995-04-24', 107, 12
);

/* INSERT QUERY NO: 28 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
183, 'C. Musonda', 'Charly  Junior', 'Belgium', 'Chelsea', 1003, '1996-10-15', 105, 12
);

/* INSERT QUERY NO: 29 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
184, 'A. Christensen', 'Andreas', 'Denmark', 'Chelsea', 1003, '1996-04-10', 113, 12
);

/* INSERT QUERY NO: 30 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
185, 'O. Aina', 'Temitayo Olufisayo Olaoluwa', 'England', 'Chelsea', 1003, '1996-10-08', 114, 12
);

/* INSERT QUERY NO: 31 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
186, 'R. Loftus-Cheek', 'Ruben', 'England', 'Chelsea', 1003, '1996-01-23', 88, 12
);

/* INSERT QUERY NO: 32 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
187, 'T. Musonda', 'Tika Kafusha', 'Belgium', 'Chelsea', 1003, '1994-01-18', 123, 12
);

/* INSERT QUERY NO: 33 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
188, 'A. Davey', 'Alex', 'Scotland', 'Chelsea', 1003, '1994-11-24', 116, 12
);

/* INSERT QUERY NO: 34 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
189, 'Ozil', 'Mesut', 'Germany', 'Arsenal', 1004, '1988-10-15', 122, 11
);

/* INSERT QUERY NO: 35 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
190, 'Sanchez', 'Alexis Alejandro', 'Chile', 'Arsenal', 1004, '1988-12-19', 114, 11
);

/* INSERT QUERY NO: 36 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
191, 'Santi Cazorla', 'Gonzalez', 'Spain', 'Arsenal', 1004, '1984-12-13', 121, 11
);

/* INSERT QUERY NO: 37 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
192, 'Ramsey', 'Aaron', 'Wales', 'Arsenal', 1004, '1990-12-26', 115, 11
);

/* INSERT QUERY NO: 38 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
193, 'Mertesacker', 'Per', 'Germany', 'Arsenal', 1004, '1984-09-29', 87, 11
);

/* INSERT QUERY NO: 39 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
194, 'Walcott', 'Theo', 'England', 'Arsenal', 1004, '1989-03-16', 118, 11
);

/* INSERT QUERY NO: 40 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
195, 'Wilshere', 'Jack', 'England', 'Arsenal', 1004, '1992-01-01', 120, 11
);

/* INSERT QUERY NO: 41 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
196, 'Koscielny', 'Laurent', 'France', 'Arsenal', 1004, '1985-09-10', 78, 11
);

/* INSERT QUERY NO: 42 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
197, 'Szczaamy', 'Wojciech', 'Poland', 'Arsenal', 1004, '1990-04-18', 125, 11
);

/* INSERT QUERY NO: 43 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
198, 'Rosicka', 'Tomaa', 'Czech Republic', 'Arsenal', 1004, '1980-10-04', 117, 11
);

/* INSERT QUERY NO: 44 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
199, 'Mikel Arteta', 'Amatriain', 'Spain', 'Arsenal', 1004, '1982-03-26', 113, 11
);

/* INSERT QUERY NO: 45 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
200, 'Debuchy', 'Mathieu', 'France', 'Arsenal', 1004, '1985-07-28', 105, 11
);

/* INSERT QUERY NO: 46 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
201, 'Giroud', 'Olivier', 'France', 'Arsenal', 1004, '1986-09-30', 131, 11
);

/* INSERT QUERY NO: 47 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
202, 'Oxlade-Chamberlain', 'Alex', 'England', 'Arsenal', 1004, '1993-08-15', 104, 11
);

/* INSERT QUERY NO: 48 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
203, ' Welbeck', 'Daniel Nii Tackie Mensah', 'England', 'Arsenal', 1004, '1990-11-26', 86, 11
);

/* INSERT QUERY NO: 49 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
204, 'Gibbs', 'Kieran', 'England', 'Arsenal', 1004, '1989-09-26', 76, 11
);

/* INSERT QUERY NO: 50 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
205, 'Ospina', 'David', 'Colombia', 'Arsenal', 1004, '1988-08-31', 115, 12
);

/* INSERT QUERY NO: 51 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
206, 'Podolski', 'Lukas', 'Germany', 'Arsenal', 1004, '1985-06-04', 130, 12
);

/* INSERT QUERY NO: 52 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
207, 'Flamini', 'Mathieu', 'France', 'Arsenal', 1004, '1984-03-07', 103, 12
);

/* INSERT QUERY NO: 53 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
208, 'Diaby', 'Vassiriki Abou', 'France', 'Arsenal', 1004, '1986-05-11', 85, 12
);

/* INSERT QUERY NO: 54 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
209, 'Nacho ', 'Monreal', 'Spain', 'Arsenal', 1004, '1986-02-26', 112, 12
);

/* INSERT QUERY NO: 55 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
210, 'Campbell', 'Joel Nathaniel', 'Costa Rica', 'Arsenal', 1004, '1992-02-10', 132, 12
);

/* INSERT QUERY NO: 56 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
211, 'Chambers', 'Calum', 'England', 'Arsenal', 1004, '1995-01-20', 127, 12
);

/* INSERT QUERY NO: 57 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
212, 'Gnabry', 'Serge', 'Germany', 'Arsenal', 1004, '1995-07-14', 84, 12
);

/* INSERT QUERY NO: 58 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
213, 'Coquelin', 'Francis', 'France', 'Arsenal', 1004, '1991-05-13', 129, 12
);

/* INSERT QUERY NO: 59 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
214, 'Sanogo', 'Yaya', 'France', 'Arsenal', 1004, '1993-01-27', 111, 12
);

/* INSERT QUERY NO: 60 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
215, 'Martinez', 'Emiliano', 'Argentina', 'Arsenal', 1004, '1992-09-02', 133, 12
);

/* INSERT QUERY NO: 61 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
216, 'Zelalem', 'Gedion', 'Germany', 'Arsenal', 1004, '1997-01-26', 109, 12
);

/* INSERT QUERY NO: 62 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
217, 'Hector', 'Belleren', 'Spain', 'Arsenal', 1004, '1995-03-19', 102, 12
);

/* INSERT QUERY NO: 63 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
218, 'Akpom', 'Chuba Akpom', 'England', 'Arsenal', 1004, '1995-10-09', 119, 12
);

/* INSERT QUERY NO: 64 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
219, 'Vickers', 'Josh Vickers', 'England', 'Arsenal', 1004, '1995-12-01', 75, 12
);

/* INSERT QUERY NO: 65 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
220, 'Huddart', 'Ryan Huddart', 'England', 'Arsenal', 1004, '1997-03-06', 110, 12
);

/* INSERT QUERY NO: 66 */
INSERT INTO PlayerDetails(PlayerID, FirstName, LastName, Nationality, Club, TeamID, DateOfBirth, InternationalStanding, TournamentId)
VALUES
(
221, 'Moore', 'Tafari Lalibela Moore', 'England', 'Arsenal', 1004, '1997-07-05', 108, 12
);

--------------------------------------------------------------------------PlayerSkills---------------------------------------------------------------

/*INSERTQUERYNO:1*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
100,'Pace:93|Shooting:89|Passing:86|Dribbling:96|Defending:27|'
);

/*INSERTQUERYNO:2*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
101,'Pace:83|Shooting:87|Passing:79|Dribbling:88|Defending:42|'
);

/*INSERTQUERYNO:3*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
102,'Pace:90|Shooting:80|Passing:72|Dribbling:92|Defending:30|'
);

/*INSERTQUERYNO:4*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
103,'Pace:66|Shooting:72|Passing:91|Dribbling:85|Defending:60|'
);

/*INSERTQUERYNO:5*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
104,'Pace:56|Shooting:59|Passing:78|Dribbling:75|Defending:81|'
);

/*INSERTQUERYNO:6*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
105,'Pace:66|Shooting:54|Passing:69|Dribbling:60|Defending:86|'
);

/*INSERTQUERYNO:7*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
106,'Pace:83|Shooting:76|Passing:78|Dribbling:84|Defending:37|'
);

/*INSERTQUERYNO:8*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
107,'Pace:69|Shooting:82|Passing:87|Dribbling:81|Defending:55|'
);

/*INSERTQUERYNO:9*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
108,'Pace:69|Shooting:59|Passing:70|Dribbling:69|Defending:84|'
);

/*INSERTQUERYNO:10*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
109,'Pace:86|Shooting:70|Passing:79|Dribbling:83|Defending:76|'
);

/*INSERTQUERYNO:11*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
110,'Pace:92|Shooting:69|Passing:75|Dribbling:81|Defending:78|'
);

/*INSERTQUERYNO:12*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
113,'Pace:77|Shooting:70|Passing:75|Dribbling:82|Defending:56|'
);

/*INSERTQUERYNO:13*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
114,'Pace:88|Shooting:49|Passing:72|Dribbling:75|Defending:73|'
);

/*INSERTQUERYNO:14*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
115,'Pace:70|Shooting:45|Passing:62|Dribbling:63|Defending:80|'
);

/*INSERTQUERYNO:15*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
116,'Pace:76|Shooting:70|Passing:77|Dribbling:80|Defending:73|'
);

/*INSERTQUERYNO:16*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
117,'Pace:68|Shooting:66|Passing:76|Dribbling:74|Defending:53|'
);

/*INSERTQUERYNO:17*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
118,'Pace:87|Shooting:65|Passing:63|Dribbling:70|Defending:66|'
);

/*INSERTQUERYNO:18*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
119,'Pace:77|Shooting:67|Passing:57|Dribbling:73|Defending:27|'
);

/*INSERTQUERYNO:19*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
120,'Pace:84|Shooting:67|Passing:51|Dribbling:69|Defending:29|'
);

/*INSERTQUERYNO:20*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
121,'Pace:93|Shooting:93|Passing:81|Dribbling:91|Defending:32|'
);

/*INSERTQUERYNO:21*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
122,'Pace:94|Shooting:83|Passing:83|Dribbling:84|Defending:63|'
);

/*INSERTQUERYNO:22*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
123,'Pace:79|Shooting:61|Passing:71|Dribbling:66|Defending:87|'
);

/*INSERTQUERYNO:23*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
125,'Pace:79|Shooting:80|Passing:84|Dribbling:85|Defending:40|'
);

/*INSERTQUERYNO:24*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
126,'Pace:58|Shooting:81|Passing:89|Dribbling:84|Defending:58|'
);

/*INSERTQUERYNO:25*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
127,'Pace:84|Shooting:84|Passing:75|Dribbling:82|Defending:30|'
);

/*INSERTQUERYNO:26*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
128,'Pace:56|Shooting:69|Passing:74|Dribbling:65|Defending:83|'
);

/*INSERTQUERYNO:27*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
129,'Pace:76|Shooting:76|Passing:82|Dribbling:86|Defending:32|'
);

/*INSERTQUERYNO:28*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
130,'Pace:73|Shooting:51|Passing:58|Dribbling:59|Defending:84|'
);

/*INSERTQUERYNO:29*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
131,'Pace:81|Shooting:67|Passing:78|Dribbling:84|Defending:77|'
);

/*INSERTQUERYNO:30*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
132,'Pace:76|Shooting:45|Passing:60|Dribbling:62|Defending:83|'
);

/*INSERTQUERYNO:31*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
134,'Pace:67|Shooting:61|Passing:80|Dribbling:77|Defending:72|'
);

/*INSERTQUERYNO:32*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
135,'Pace:82|Shooting:40|Passing:73|Dribbling:78|Defending:76|'
);

/*INSERTQUERYNO:33*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
136,'Pace:80|Shooting:65|Passing:73|Dribbling:79|Defending:75|'
);

/*INSERTQUERYNO:34*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
137,'Pace:73|Shooting:60|Passing:71|Dribbling:61|Defending:79|'
);

/*INSERTQUERYNO:35*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
138,'Pace:87|Shooting:73|Passing:71|Dribbling:83|Defending:27|'
);

/*INSERTQUERYNO:36*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
139,'Pace:76|Shooting:31|Passing:60|Dribbling:53|Defending:75|'
);

/*INSERTQUERYNO:37*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
140,'Pace:67|Shooting:32|Passing:53|Dribbling:48|Defending:67|'
);

/*INSERTQUERYNO:38*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
141,'Pace:71|Shooting:33|Passing:50|Dribbling:53|Defending:62|'
);

/*INSERTQUERYNO:39*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
142,'Pace:63|Shooting:60|Passing:64|Dribbling:71|Defending:27|'
);

/*INSERTQUERYNO:40*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
143,'Pace:67|Shooting:67|Passing:48|Dribbling:61|Defending:28|'
);

/*INSERTQUERYNO:41*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
145,'Pace:62|Shooting:56|Passing:70|Dribbling:65|Defending:58|'
);

/*INSERTQUERYNO:42*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
146,'Pace:63|Shooting:60|Passing:64|Dribbling:71|Defending:27|'
);

/*INSERTQUERYNO:43*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
147,'Pace:62|Shooting:57|Passing:63|Dribbling:61|Defending:58|'
);

/*INSERTQUERYNO:44*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
148,'Pace:54|Shooting:47|Passing:57|Dribbling:75|Defending:26|'
);

/*INSERTQUERYNO:45*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
149,'Pace:56|Shooting:32|Passing:41|Dribbling:58|Defending:67|'
);

/*INSERTQUERYNO:46*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
150,'Pace:78|Shooting:31|Passing:36|Dribbling:58|Defending:59|'
);

/*INSERTQUERYNO:47*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
151,'Pace:83|Shooting:87|Passing:79|Dribbling:88|Defending:40|'
);

/*INSERTQUERYNO:48*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
152,'Pace:66|Shooting:72|Passing:81|Dribbling:85|Defending:50|'
);

/*INSERTQUERYNO:49*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
153,'Pace:69|Shooting:82|Passing87|Dribbling:81|Defending:55|'
);

/*INSERTQUERYNO:50*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
157,'Pace:67|Shooting:61|Passing:80|Dribbling:77|Defending:72|'
);

/*INSERTQUERYNO:51*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
155,'Pace:70|Shooting:45|Passing:62|Dribbling:63|Defending:80|'
);

/*INSERTQUERYNO:52*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
156,'Pace:87|Shooting:65|Passing:63|Dribbling:80|Defending:76|'
);

/*INSERTQUERYNO:53*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
158,'Pace:79|Shooting:61|Passing:71|Dribbling:66|Defending:87|'
);

/*INSERTQUERYNO:54*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
160,'Pace:76|Shooting:76|Passing:62|Dribbling:86|Defending:32|'
);

/*INSERTQUERYNO:55*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
161,'Pace:76|Shooting:45|Passing:80|Dribbling:92|Defending:83|'
);

/*INSERTQUERYNO:56*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
162,'Pace:67|Shooting:61|Passing:80|Dribbling:77|Defending:72|'
);

/*INSERTQUERYNO:57*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
163,'Pace:73|Shooting:60|Passing:61|Dribbling:61|Defending:79|'
);

/*INSERTQUERYNO:58*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
164,'Pace:67|Shooting:32|Passing:73|Dribbling:48|Defending:67|'
);

/*INSERTQUERYNO:59*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
159,'Pace:86|Shooting:36|Passing:55|Dribbling:53|Defending:69|'
);

/*INSERTQUERYNO:60*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
166,'Pace:72|Shooting:66|Passing:49|Dribbling:84|Defending:30|'
);

/*INSERTQUERYNO:61*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
167,'Pace:63|Shooting:60|Passing:64|Dribbling:71|Defending:27|'
);

/*INSERTQUERYNO:62*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
168,'Pace:76|Shooting:32|Passing:61|Dribbling:58|Defending:77|'
);

/*INSERTQUERYNO:63*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
169,'Pace:86|Shooting:62|Passing:41|Dribbling:65|Defending:50|'
);

/*INSERTQUERYNO:64*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
170,'Pace:57|Shooting:82|Passing:51|Dribbling:58|Defending:67|'
);

/*INSERTQUERYNO:65*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
171,'Pace:65|Shooting:56|Passing:61|Dribbling:67|Defending:87|'
);

/*INSERTQUERYNO:66*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
172,'Pace:46|Shooting:43|Passing:51|Dribbling:68|Defending:97|'
);

/*INSERTQUERYNO:67*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
174,'Pace:57|Shooting:76|Passing:76|Dribbling:77|Defending:47|'
);

/*INSERTQUERYNO:68*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
175,'Pace:76|Shooting:62|Passing:45|Dribbling:42|Defending:77|'
);

/*INSERTQUERYNO:69*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
176,'Pace:86|Shooting:36|Passing:55|Dribbling:53|Defending:69|'
);

/*INSERTQUERYNO:70*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
177,'Pace:66|Shooting:45|Passing:67|Dribbling:68|Defending:67|'
);

/*INSERTQUERYNO:71*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
179,'Pace:66|Shooting:45|Passing:41|Dribbling:82|Defending:56|'
);

/*INSERTQUERYNO:72*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
180,'Pace:76|Shooting:56|Passing:83|Dribbling:47|Defending:78|'
);

/*INSERTQUERYNO:73*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
181,'Pace:59|Shooting:57|Passing:78|Dribbling:68|Defending:54|'
);

/*INSERTQUERYNO:74*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
182,'Pace:66|Shooting:60|Passing:80|Dribbling:78|Defending:87|'
);

/*INSERTQUERYNO:75*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
183,'Pace:81|Shooting:62|Passing:89|Dribbling:74|Defending:68|'
);

/*INSERTQUERYNO:76*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
184,'Pace:80|Shooting:57|Passing:58|Dribbling:56|Defending:57|'
);

/*INSERTQUERYNO:77*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
185,'Pace:79|Shooting:45|Passing:67|Dribbling:67|Defending:68|'
);

/*INSERTQUERYNO:78*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
186,'Pace:83|Shooting:59|Passing:76|Dribbling:75|Defending:57|'
);

/*INSERTQUERYNO:79*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
187,'Pace:85|Shooting:52|Passing:61|Dribbling:46|Defending:87|'
);

/*INSERTQUERYNO:80*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
188,'Pace:90|Shooting:62|Passing:64|Dribbling:67|Defending:65|'
);

/*INSERTQUERYNO:81*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
189,'Pace:56|Shooting:42|Passing:74|Dribbling:54|Defending:87|'
);

/*INSERTQUERYNO:82*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
190,'Pace:75|Shooting:53|Passing:60|Dribbling:58|Defending:78|'
);

/*INSERTQUERYNO:83*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
191,'Pace:73|Shooting:32|Passing:70|Dribbling:75|Defending:77|'
);

/*INSERTQUERYNO:84*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
197,'Pace:56|Shooting:42|Passing:74|Dribbling:54|Defending:87|'
);

/*INSERTQUERYNO:85*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
193,'Pace:72|Shooting:56|Passing:70|Dribbling:65|Defending:65|'
);

/*INSERTQUERYNO:86*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
194,'Pace:75|Shooting:76|Passing:58|Dribbling:48|Defending:76|'
);

/*INSERTQUERYNO:87*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
195,'Pace:80|Shooting:69|Passing:68|Dribbling:68|Defending:45|'
);

/*INSERTQUERYNO:88*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
196,'Pace:72|Shooting:87|Passing:72|Dribbling:56|Defending:56|'
);

/*INSERTQUERYNO:89*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
198,'Pace:71|Shooting:79|Passing:60|Dribbling:69|Defending:47|'
);

/*INSERTQUERYNO:90*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
199,'Pace:80|Shooting:49|Passing:59|Dribbling:72|Defending:67|'
);

/*INSERTQUERYNO:91*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
200,'Pace:85|Shooting:68|Passing:76|Dribbling:46|Defending:89|'
);

/*INSERTQUERYNO:92*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
201,'Pace:69|Shooting:76|Passing:68|Dribbling:68|Defending:64|'
);

/*INSERTQUERYNO:93*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
202,'Pace:79|Shooting:67|Passing:57|Dribbling:55|Defending:77|'
);

/*INSERTQUERYNO:94*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
205,'Pace:80|Shooting:69|Passing:68|Dribbling:68|Defending:45|'
);

/*INSERTQUERYNO:95*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
204,'Pace:56|Shooting:78|Passing:72|Dribbling:56|Defending:77|'
);

/*INSERTQUERYNO:96*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
206,'Pace:60|Shooting:66|Passing:41|Dribbling:64|Defending:84|'
);

/*INSERTQUERYNO:97*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
207,'Pace:76|Shooting:70|Passing:41|Dribbling:69|Defending:67|'
);

/*INSERTQUERYNO:98*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
208,'Pace:46|Shooting:60|Passing:71|Dribbling:78|Defending:37|'
);

/*INSERTQUERYNO:99*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
209,'Pace:69|Shooting:78|Passing:83|Dribbling:58|Defending:87|'
);

/*INSERTQUERYNO:100*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
210,'Pace:77|Shooting:82|Passing:67|Dribbling:78|Defending:47|'
);

/*INSERTQUERYNO:101*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
211,'Pace:76|Shooting:73|Passing:89|Dribbling:52|Defending:75|'
);

/*INSERTQUERYNO:102*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
213,'Pace:79|Shooting:52|Passing:72|Dribbling:39|Defending:87|'
);

/*INSERTQUERYNO:103*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
214,'Pace:78|Shooting:82|Passing:63|Dribbling:65|Defending:57|'
);

/*INSERTQUERYNO:104*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
215,'Pace:57|Shooting:62|Passing:65|Dribbling:57|Defending:87|'
);

/*INSERTQUERYNO:105*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
216,'Pace:77|Shooting:72|Passing:71|Dribbling:45|Defending:77|'
);

/*INSERTQUERYNO:106*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
217,'Pace:76|Shooting:52|Passing:51|Dribbling:48|Defending:77|'
);

/*INSERTQUERYNO:107*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
218,'Pace:69|Shooting:82|Passing:67|Dribbling:62|Defending:57|'
);

/*INSERTQUERYNO:108*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
219,'Pace:60|Shooting:72|Passing:78|Dribbling:58|Defending:78|'
);

/*INSERTQUERYNO:109*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
220,'Pace:76|Shooting:49|Passing:54|Dribbling:60|Defending:79|'
);

/*INSERTQUERYNO:110*/
INSERT INTO PlayerSkills(PlayerID,PlayerSkills)
VALUES
(
221,'Pace:49|Shooting:54|Passing:67|Dribbling:78|Defending:77|'
);
---------------------PreferedPosition--------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
100, 'forward'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
101, 'forward'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
102, 'forward'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
103, 'midfield'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
104, 'midfield'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
105, 'defence'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
106, 'forward'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
107, 'midfield'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
108, 'defence'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
109, 'defence'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
110, 'goalkeeper'
);

/* INSERT QUERY NO: 12 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
111, 'goalkeeper'
);

/* INSERT QUERY NO: 13 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
112, 'defence'
);

/* INSERT QUERY NO: 14 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
113, 'defence'
);

/* INSERT QUERY NO: 15 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
114, 'defence'
);

/* INSERT QUERY NO: 16 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
115, 'midfield'
);

/* INSERT QUERY NO: 17 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
116, 'defence'
);

/* INSERT QUERY NO: 18 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
117, 'defence'
);

/* INSERT QUERY NO: 19 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
118, 'defence'
);

/* INSERT QUERY NO: 20 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
119, 'midfield'
);

/* INSERT QUERY NO: 21 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
120, 'goalkeeper'
);

/* INSERT QUERY NO: 22 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
121, 'defence'
);

/* INSERT QUERY NO: 23 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
122, 'forward'
);

/* INSERT QUERY NO: 24 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
123, 'forward'
);

/* INSERT QUERY NO: 25 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
124, 'forward'
);

/* INSERT QUERY NO: 26 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
125, 'forward'
);

/* INSERT QUERY NO: 27 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
126, 'defence'
);

/* INSERT QUERY NO: 28 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
127, 'midfield'
);

/* INSERT QUERY NO: 29 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
128, 'forward'
);

/* INSERT QUERY NO: 30 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
129, 'midfield'
);

/* INSERT QUERY NO: 31 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
130, 'forward'
);

/* INSERT QUERY NO: 32 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
131, 'midfield'
);

/* INSERT QUERY NO: 33 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
132, 'goalkeeper'
);

/* INSERT QUERY NO: 34 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
133, 'midfield'
);

/* INSERT QUERY NO: 35 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
134, 'defence'
);

/* INSERT QUERY NO: 36 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
135, 'defence'
);

/* INSERT QUERY NO: 37 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
136, 'defence'
);

/* INSERT QUERY NO: 38 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
137, 'forward'
);

/* INSERT QUERY NO: 39 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
138, 'midfield'
);

/* INSERT QUERY NO: 40 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
139, 'defence'
);

/* INSERT QUERY NO: 41 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
140, 'defence'
);

/* INSERT QUERY NO: 42 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
141, 'goalkeeper'
);

/* INSERT QUERY NO: 43 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
142, 'defence'
);

/* INSERT QUERY NO: 44 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
143, 'midfield'
);

/* INSERT QUERY NO: 45 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
144, 'defence'
);

/* INSERT QUERY NO: 46 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
145, 'defence'
);

/* INSERT QUERY NO: 47 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
146, 'defence'
);

/* INSERT QUERY NO: 48 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
147, 'forward'
);

/* INSERT QUERY NO: 49 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
148, 'forward'
);

/* INSERT QUERY NO: 50 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
149, 'forward'
);

/* INSERT QUERY NO: 51 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
150, 'midfield'
);

/* INSERT QUERY NO: 52 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
151, 'goalkeeper'
);

/* INSERT QUERY NO: 53 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
152, 'midfield'
);

/* INSERT QUERY NO: 54 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
153, 'goalkeeper'
);

/* INSERT QUERY NO: 55 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
154, 'midfield'
);

/* INSERT QUERY NO: 56 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
155, 'defence'
);

/* INSERT QUERY NO: 57 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
156, 'defence'
);


/* INSERT QUERY NO: 1 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
156, 'defence'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
157, 'forward'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
158, 'midfield'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
159, 'midfield'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
160, 'defence'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
161, 'forward'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
162, 'midfield'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
163, 'midfield'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
164, 'defence'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
165, 'goalkeeper'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
166, 'defence'
);

/* INSERT QUERY NO: 12 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
167, 'forward'
);

/* INSERT QUERY NO: 13 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
168, 'midfield'
);

/* INSERT QUERY NO: 14 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
169, 'defence'
);

/* INSERT QUERY NO: 15 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
170, 'midfield'
);

/* INSERT QUERY NO: 16 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
171, 'forward'
);

/* INSERT QUERY NO: 17 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
172, 'defence'
);

/* INSERT QUERY NO: 18 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
173, 'goalkeeper'
);

/* INSERT QUERY NO: 19 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
174, 'midfield'
);

/* INSERT QUERY NO: 20 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
175, 'defence'
);

/* INSERT QUERY NO: 21 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
176, 'forward'
);

/* INSERT QUERY NO: 22 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
177, 'midfield'
);

/* INSERT QUERY NO: 23 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
178, 'goalkeeper'
);

/* INSERT QUERY NO: 24 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
179, 'midfield'
);

/* INSERT QUERY NO: 25 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
180, 'defence'
);

/* INSERT QUERY NO: 26 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
181, 'defence'
);

/* INSERT QUERY NO: 27 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
182, 'midfield'
);

/* INSERT QUERY NO: 28 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
183, 'forward'
);

/* INSERT QUERY NO: 29 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
184, 'forward'
);

/* INSERT QUERY NO: 30 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
185, 'goalkeeper'
);

/* INSERT QUERY NO: 31 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
186, 'forward'
);

/* INSERT QUERY NO: 32 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
187, 'defence'
);

/* INSERT QUERY NO: 33 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
188, 'midfield'
);

/* INSERT QUERY NO: 34 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
189, 'defence'
);

/* INSERT QUERY NO: 35 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
190, 'midfield'
);

/* INSERT QUERY NO: 36 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
191, 'forward'
);

/* INSERT QUERY NO: 37 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
192, 'goalkeeper'
);

/* INSERT QUERY NO: 38 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
193, 'defence'
);

/* INSERT QUERY NO: 39 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
194, 'midfield'
);

/* INSERT QUERY NO: 40 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
195, 'defence'
);

/* INSERT QUERY NO: 41 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
196, 'forward'
);

/* INSERT QUERY NO: 42 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
197, 'midfield'
);

/* INSERT QUERY NO: 43 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
198, 'defence'
);

/* INSERT QUERY NO: 44 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
199, 'forward'
);

/* INSERT QUERY NO: 45 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
200, 'midfield'
);

/* INSERT QUERY NO: 46 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
201, 'forward'
);

/* INSERT QUERY NO: 47 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
202, 'midfield'
);

/* INSERT QUERY NO: 48 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
203, 'goalkeeper'
);

/* INSERT QUERY NO: 49 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
204, 'defence'
);

/* INSERT QUERY NO: 50 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
205, 'midfield'
);

/* INSERT QUERY NO: 51 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
206, 'defence'
);

/* INSERT QUERY NO: 52 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
207, 'forward'
);

/* INSERT QUERY NO: 53 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
208, 'defence'
);

/* INSERT QUERY NO: 54 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
209, 'midfield'
);

/* INSERT QUERY NO: 55 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
210, 'defence'
);

/* INSERT QUERY NO: 56 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
211, 'forward'
);

/* INSERT QUERY NO: 57 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
212, 'goalkeeper'
);

/* INSERT QUERY NO: 58 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
213, 'forward'
);

/* INSERT QUERY NO: 59 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
214, 'midfield'
);

/* INSERT QUERY NO: 60 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
215, 'defence'
);

/* INSERT QUERY NO: 61 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
216, 'forward'
);

/* INSERT QUERY NO: 62 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
217, 'defence'
);

/* INSERT QUERY NO: 63 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
218, 'midfield'
);

/* INSERT QUERY NO: 64 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
219, 'goalkeeper'
);

/* INSERT QUERY NO: 65 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
220, 'forward'
);

/* INSERT QUERY NO: 66 */
INSERT INTO PreferedPosition(PlayerID, PreferedPosition)
VALUES
(
221, 'midfield'
);
-------------------------------------------PlayerFitness-------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
100, 169, 67, 'Normal', 'Medium/Low', 18, 'medium', 63
);

/* INSERT QUERY NO: 2 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
101, 181, 81, 'Normal', 'High/Medium', 19, 'medium', 79
);

/* INSERT QUERY NO: 3 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
102, 175, 64, 'Lean', 'High/Medium', 18, 'medium', 58
);

/* INSERT QUERY NO: 4 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
103, 170, 68, 'Normal', 'Medium/Medium', 19, 'medium', 58
);

/* INSERT QUERY NO: 5 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
104, 189, 73, 'Lean', 'Medium/Medium', 20, 'high', 81
);

/* INSERT QUERY NO: 6 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
105, 192, 85, 'Normal', 'High/Medium', 18, 'medium', 76
);

/* INSERT QUERY NO: 7 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
106, 169, 64, 'Normal', 'High/Medium', 19, 'medium', 60
);

/* INSERT QUERY NO: 8 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
107, 184, 75, 'Normal', 'Medium/Medium', 20, 'medium', 67
);

/* INSERT QUERY NO: 9 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
108, 174, 74, 'Normal', 'Medium/High', 17, 'medium', 80
);

/* INSERT QUERY NO: 10 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
109, 173, 64, 'Normal', 'High/Low', 16, 'medium', 68
);

/* INSERT QUERY NO: 11 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
110, 185, 84, 'Normal', 'Medium/Medium', 18, 'medium', 51
);

/* INSERT QUERY NO: 12 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
111, 189, 82, 'Normal', 'Medium/Medium', 19, 'medium', 59
);

/* INSERT QUERY NO: 13 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
112, 170, 69, 'Normal', 'High/Medium', 19, 'medium', 76
);

/* INSERT QUERY NO: 14 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
113, 192, 82, 'Normal', 'High/Medium', 21, 'medium', 81
);

/* INSERT QUERY NO: 15 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
114, 182, 75, 'Normal', 'High/Medium', 19, 'medium', 77
);

/* INSERT QUERY NO: 16 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
115, 177, 70, 'Normal', 'Medium/Medium', 18, 'medium', 67
);

/* INSERT QUERY NO: 17 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
116, 174, 74, 'Lean', 'High/Medium', 21, 'high', 76
);

/* INSERT QUERY NO: 18 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
117, 183, 70, 'Lean', 'High/Medium', 20, 'high', 69
);

/* INSERT QUERY NO: 19 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
118, 172, 67, 'Normal', 'High/Medium', 17, 'medium', 72
);

/* INSERT QUERY NO: 20 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
119, 177, 70, 'Normal', 'Medium/Medium', 19, 'medium', 73
);

/* INSERT QUERY NO: 21 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
120, 180, 72, 'Lean', 'Medium/Medium', 19, 'high', 79
);

/* INSERT QUERY NO: 22 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
121, 171, 63, 'Normal', 'High/Medium', 18, 'medium', 62
);

/* INSERT QUERY NO: 23 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
122, 175, 71, 'Normal', 'High/Medium', 18, 'medium', 69
);

/* INSERT QUERY NO: 24 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
123, 172, 62, 'Lean', 'High/Medium', 23, 'high', 36
);

/* INSERT QUERY NO: 25 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
124, 185, 80, 'Normal', 'High/Low', 20, 'medium', 79
);

/* INSERT QUERY NO: 26 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
125, 183, 74, 'Lean', 'High/Medium', 19, 'high', 81
);

/* INSERT QUERY NO: 27 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
126, 183, 75, 'Normal', 'High/Medium', 18, 'medium', 82
);

/* INSERT QUERY NO: 28 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
127, 174, 65, 'Lean', 'High/Medium', 17, 'high', 70
);

/* INSERT QUERY NO: 29 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
128, 180, 75, 'Normal', 'Medium/Medium', 19, 'medium', 72
);

/* INSERT QUERY NO: 30 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
129, 182, 78, 'Normal', 'Medium/Medium', 18, 'medium', 69
);

/* INSERT QUERY NO: 31 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
130, 184, 79, 'Normal', 'Medium/Low', 20, 'medium', 74
);

/* INSERT QUERY NO: 32 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
131, 189, 85, 'Normal', 'Medium/High', 21, 'medium', 86
);

/* INSERT QUERY NO: 33 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
132, 185, 84, 'Normal', 'Medium/Medium', 18, 'medium', 65
);

/* INSERT QUERY NO: 34 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
133, 176, 74, 'Normal', 'High/Low', 19, 'medium', 62
);

/* INSERT QUERY NO: 35 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
134, 188, 81, 'Lean', 'Medium/High', 17, 'high', 83
);

/* INSERT QUERY NO: 36 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
135, 174, 75, 'Normal', 'High/Medium', 16, 'medium', 79
);

/* INSERT QUERY NO: 37 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
136, 191, 78, 'Lean', 'Medium/Medium', 19, 'high', 76
);

/* INSERT QUERY NO: 38 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
137, 175, 71, 'Normal', 'Medium/Low', 18, 'medium', 63
);

/* INSERT QUERY NO: 39 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
138, 179, 76, 'Normal', 'Medium/Medium', 20, 'medium', 70
);

/* INSERT QUERY NO: 40 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
139, 173, 73, 'Stocky', 'High/Medium', 19, 'high', 82
);

/* INSERT QUERY NO: 41 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
140, 179, 70, 'Lean', 'Medium/Medium', 18, 'high', 76
);

/* INSERT QUERY NO: 42 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
141, 185, 78, 'Normal', 'Medium/Medium', 19, 'medium', 78
);

/* INSERT QUERY NO: 43 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
142, 184, 79, 'Lean', 'Medium/Medium', 16, 'high', 78
);

/* INSERT QUERY NO: 44 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
143, 178, 73, 'Lean', 'Medium/Low', 19, 'high', 55
);

/* INSERT QUERY NO: 45 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
144, 179, 75, 'Normal', 'Medium/Medium', 17, 'medium', 75
);

/* INSERT QUERY NO: 46 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
145, 185, 74, 'Lean', 'Medium/Medium', 18, 'high', 66
);

/* INSERT QUERY NO: 47 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
146, 183, 74, 'Normal', 'Medium/Medium', 19, 'medium', 73
);

/* INSERT QUERY NO: 48 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
147, 184, 71, 'Lean', 'Medium/Low', 19, 'high', 46
);

/* INSERT QUERY NO: 49 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
148, 178, 68, 'Lean', 'Medium/Medium', 18, 'high', 50
);

/* INSERT QUERY NO: 50 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
149, 197, 97, 'Lean', 'Medium/Medium', 20, 'high', 71
);

/* INSERT QUERY NO: 51 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
150, 176, 68, 'Lean', 'Medium/Medium', 17, 'high', 41
);

/* INSERT QUERY NO: 52 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
151, 190, 81, 'Lean', 'Medium/Medium', 17, 'high', 78
);

/* INSERT QUERY NO: 53 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
152, 179, 70, 'Lean', 'Medium/Medium', 21, 'high', 52
);

/* INSERT QUERY NO: 54 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
153, 187, 82, 'Lean', 'Medium/Medium', 20, 'high', 61
);

/* INSERT QUERY NO: 55 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
154, 186, 75, 'Lean', 'Medium/Low', 19, 'high', 44
);

/* INSERT QUERY NO: 56 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, BodyType, Workrate, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
155, 171, 69, 'Lean', 'Medium/High', 20, 'high', 59
);

/* INSERT QUERY NO: 1 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
156, 175, 75, 'Medium/Medium', 'Normal', 19, 'medium', 59
);

/* INSERT QUERY NO: 2 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
157, 173, 74, 'High/Medium', 'Normal', 21, 'medium', 62
);

/* INSERT QUERY NO: 3 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
158, 199, 88, 'Medium/Medium', 'Lean', 18, 'high', 69
);

/* INSERT QUERY NO: 4 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
159, 188, 81, 'High/Medium', 'Normal', 19, 'medium', 36
);

/* INSERT QUERY NO: 5 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
160, 196, 90, 'Medium/Medium', 'Normal', 17, 'medium', 79
);

/* INSERT QUERY NO: 6 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
161, 179, 67, 'Medium/High', 'Lean', 16, 'high', 81
);

/* INSERT QUERY NO: 7 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
162, 179, 85, 'High/Medium', 'Normal', 23, 'medium', 82
);

/* INSERT QUERY NO: 8 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
163, 187, 90, 'Medium/High', 'Normal', 20, 'medium', 70
);

/* INSERT QUERY NO: 9 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
164, 194, 84, 'Medium/High', 'Lean', 19, 'high', 72
);

/* INSERT QUERY NO: 10 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
165, 175, 75, 'High/High', 'Lean', 17, 'high', 69
);

/* INSERT QUERY NO: 11 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
166, 182, 78, 'High/Medium', 'Lean', 21, 'high', 73
);

/* INSERT QUERY NO: 12 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
167, 183, 72, 'Medium/Medium', 'Lean', 20, 'high', 46
);

/* INSERT QUERY NO: 13 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
168, 180, 70, 'High/High', 'Lean', 20, 'high', 50
);

/* INSERT QUERY NO: 14 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
169, 188, 85, 'Medium/Medium', 'Normal', 18, 'medium', 71
);

/* INSERT QUERY NO: 15 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
170, 193, 86, 'Medium/Medium', 'Lean', 19, 'high', 41
);

/* INSERT QUERY NO: 16 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
171, 185, 91, 'High/Medium', 'Normal', 20, 'medium', 78
);

/* INSERT QUERY NO: 17 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
172, 184, 76, 'Medium/Medium', 'Lean', 17, 'high', 52
);

/* INSERT QUERY NO: 18 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
173, 178, 75, 'Medium/Medium', 'Normal', 17, 'medium', 61
);

/* INSERT QUERY NO: 19 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
174, 188, 83, 'Medium/High', 'Normal', 21, 'medium', 44
);

/* INSERT QUERY NO: 20 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
175, 175, 72, 'High/Medium', 'Lean', 20, 'high', 62
);

/* INSERT QUERY NO: 21 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
176, 194, 95, 'Medium/Medium', 'Lean', 17, 'high', 69
);

/* INSERT QUERY NO: 22 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
177, 187, 85, 'Medium/Medium', 'Stocky', 19, 'high', 36
);

/* INSERT QUERY NO: 23 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
178, 180, 75, 'High/Medium', 'Lean', 19, 'high', 79
);

/* INSERT QUERY NO: 24 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
179, 180, 70, 'High/Medium', 'Normal', 18, 'medium', 81
);

/* INSERT QUERY NO: 25 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
180, 180, 68, 'Medium/Medium', 'Lean', 18, 'high', 82
);

/* INSERT QUERY NO: 26 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
181, 182, 70, 'Medium/Medium', 'Normal', 23, 'medium', 70
);

/* INSERT QUERY NO: 27 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
182, 172, 68, 'Medium/Medium', 'Normal', 20, 'medium', 72
);

/* INSERT QUERY NO: 28 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
183, 178, 70, 'Medium/Medium', 'Lean', 19, 'high', 69
);

/* INSERT QUERY NO: 29 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
184, 165, 55, 'Medium/Low', 'Lean', 18, 'high', 74
);

/* INSERT QUERY NO: 30 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
185, 188, 74, 'Medium/Medium', 'Lean', 17, 'high', 86
);

/* INSERT QUERY NO: 31 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
186, 175, 65, 'High/Medium', 'Normal', 19, 'medium', 65
);

/* INSERT QUERY NO: 32 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
187, 190, 71, 'Medium/Medium', 'Normal', 18, 'medium', 62
);

/* INSERT QUERY NO: 33 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
188, 185, 79, 'Medium/Medium', 'Lean', 20, 'high', 83
);

/* INSERT QUERY NO: 34 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
189, 191, 84, 'Medium/Medium', 'Lean', 21, 'high', 79
);

/* INSERT QUERY NO: 35 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
190, 183, 76, 'Medium/Low', 'Lean', 18, 'high', 76
);

/* INSERT QUERY NO: 36 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
191, 171, 62, 'High/Medium', 'Normal', 19, 'medium', 62
);

/* INSERT QUERY NO: 37 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
192, 168, 66, 'Medium/Medium', 'Stocky', 17, 'high', 69
);

/* INSERT QUERY NO: 38 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
193, 177, 70, 'High/High', 'Lean', 16, 'high', 36
);

/* INSERT QUERY NO: 39 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
194, 198, 90, 'Medium/Medium', 'Normal', 19, 'medium', 79
);

/* INSERT QUERY NO: 40 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
195, 176, 68, 'High/Low', 'Lean', 18, 'high', 81
);

/* INSERT QUERY NO: 41 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
196, 172, 68, 'Medium/Medium', 'Normal', 20, 'medium', 82
);

/* INSERT QUERY NO: 42 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
197, 186, 75, 'Medium/High', 'Lean', 17, 'high', 70
);

/* INSERT QUERY NO: 43 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
198, 196, 84, 'Medium/Medium', 'Lean', 21, 'high', 72
);

/* INSERT QUERY NO: 44 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
199, 178, 65, 'High/High', 'Lean', 20, 'high', 69
);

/* INSERT QUERY NO: 45 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
200, 175, 64, 'Medium/Medium', 'Normal', 19, 'medium', 74
);

/* INSERT QUERY NO: 46 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
201, 178, 76, 'High/Medium', 'Normal', 20, 'medium', 86
);

/* INSERT QUERY NO: 47 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
202, 192, 88, 'Medium/Medium', 'Normal', 19, 'medium', 65
);

/* INSERT QUERY NO: 48 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
203, 175, 70, 'High/Medium', 'Normal', 21, 'medium', 62
);

/* INSERT QUERY NO: 49 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
204, 185, 73, 'High/High', 'Lean', 18, 'high', 83
);

/* INSERT QUERY NO: 50 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
205, 178, 70, 'High/Medium', 'Lean', 19, 'high', 79
);

/* INSERT QUERY NO: 51 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
206, 183, 79, 'Medium/Medium', 'Normal', 17, 'medium', 76
);

/* INSERT QUERY NO: 52 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
207, 182, 83, 'Medium/Low', 'Normal', 16, 'medium', 74
);

/* INSERT QUERY NO: 53 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
208, 178, 67, 'High/High', 'Lean', 23, 'high', 86
);

/* INSERT QUERY NO: 54 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
209, 190, 76, 'Medium/Medium', 'Lean', 20, 'high', 62
);

/* INSERT QUERY NO: 55 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
210, 178, 72, 'Medium/High', 'Normal', 19, 'medium', 83
);

/* INSERT QUERY NO: 56 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
211, 178, 72, 'Medium/High', 'Normal', 17, 'medium', 79
);

/* INSERT QUERY NO: 57 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
212, 183, 66, 'High/Medium', 'Normal', 21, 'medium', 36
);

/* INSERT QUERY NO: 58 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
213, 173, 73, 'Medium/Medium', 'Normal', 20, 'medium', 79
);

/* INSERT QUERY NO: 59 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
214, 178, 74, 'Medium/Medium', 'Normal', 20, 'medium', 81
);

/* INSERT QUERY NO: 60 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
215, 191, 74, 'Medium/Medium', 'Lean', 18, 'high', 82
);

/* INSERT QUERY NO: 61 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
216, 191, 88, 'Medium/Medium', 'Normal', 19, 'medium', 70
);

/* INSERT QUERY NO: 62 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
217, 180, 63, 'Medium/Medium', 'Lean', 20, 'high', 72
);

/* INSERT QUERY NO: 63 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
218, 177, 74, 'Medium/Medium', 'Normal', 19, 'medium', 69
);

/* INSERT QUERY NO: 64 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
219, 183, 70, 'Medium/Medium', 'Lean', 21, 'high', 73
);

/* INSERT QUERY NO: 65 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
220, 183, 72, 'Medium/Medium', 'Lean', 18, 'high', 46
);

/* INSERT QUERY NO: 66 */
INSERT INTO PlayerFitness(PlayerID, Height, weight, Workrate, BodyType, AverageJumpHeight, Injury, RecoveryRate)
VALUES
(
221, 191, 75, 'Medium/Medium', 'Normal', 19, 'medium', 50
);

--------------------------------------------------------------------CaptainDetails---------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
100, 11, 19, 15, 'professional', 'International', 8
);

/* INSERT QUERY NO: 2 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
104, 11, 26, 26, 'professional', 'International', 13
);

/* INSERT QUERY NO: 3 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
105, 12, 32, 11, 'professional', 'International', 10
);

/* INSERT QUERY NO: 4 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
125, 12, 45, 9, 'professional', 'International', 12
);

/* INSERT QUERY NO: 5 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
127, 12, 11, 10, 'professional', 'International', 11
);

/* INSERT QUERY NO: 6 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
135, 12, 23, 23, 'professional', 'International', 9
);

/* INSERT QUERY NO: 7 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
161, 11, 43, 13, 'professional', 'International', 15
);

/* INSERT QUERY NO: 8 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
182, 12, 13, 5, 'professional', 'International', 18
);

/* INSERT QUERY NO: 9 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
199, 11, 29, 13, 'professional', 'International', 20
);

/* INSERT QUERY NO: 10 */
INSERT INTO CaptainDetails(PlayerID, TournamentId, NumOfGamesWon, NumOfGamesLost, LevelOfTournament, TypeOfTournament, NumofYears)
VALUES
(
221, 12, 9, 4, 'professional', 'International', 10
);

------------------------------------------------------------Referee Details ---------------------------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
33, 'Tolga', 'Zengin', 11, 42, 'England', 'Manchester united'
);

/* INSERT QUERY NO: 2 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
34, 'Douglas', 'Costa de Souza', 13, 36, 'Brazil', 'Arsenal'
);

/* INSERT QUERY NO: 3 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
35, 'Artem', 'Dzyuba', 12, 43, 'Argentina', 'RealMadrid'
);

/* INSERT QUERY NO: 4 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
36, 'Mateo', 'Pablo Musacchio', 13, 53, 'Italy', 'Sevilla'
);

/* INSERT QUERY NO: 5 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
37, 'Paco', 'Francisco', 11, 46, 'Spain', 'FCBarcelona'
);

/* INSERT QUERY NO: 6 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
38, 'Semih', 'Kaya', 12, 51, 'Spain', 'RealMadrid'
);

/* INSERT QUERY NO: 7 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
39, 'Grzegorz', 'Krychowiak', 13, 39, 'Russia', 'Villareal'
);

/* INSERT QUERY NO: 8 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
40, 'Deulofeu', 'Gerard', 12, 49, 'Netherland', 'FCBarcelona'
);

/* INSERT QUERY NO: 9 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
41, 'Sergio', 'Asenjo', 13, 41, 'France', 'Arsenal'
);

/* INSERT QUERY NO: 10 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
42, 'Alex', 'Teixeira dos Santos', 14, 51, 'Brazil', 'Manchester united'
);

/* INSERT QUERY NO: 11 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
43, 'Kamil', 'Glik', 12, 43, 'Poland', 'RealMadrid'
);

/* INSERT QUERY NO: 12 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
44, 'Iborra', 'Vicente', 12, 35, 'Greece', 'Sevilla'
);

/* INSERT QUERY NO: 13 */
INSERT INTO RefreeDetails(RefereeID, FirstName, LastName, TournamentId, Age, Nationality, Club)
VALUES
(
45, 'Lazar', 'Markovia', 11, 40, 'Russia', 'WestHam'
);


-----------------------------------------------------------------------PenaltyShootoutDetails--------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1001, 111, 11, 5, 'By Player'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1001, 112, 11, 2, 'By Team'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1002, 133, 12, 6, 'By Team'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1002, 144, 12, 1, 'By Team'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1002, 154, 11, 3, 'By Player'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1003, 165, 11, 9, 'By Player'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1003, 173, 11, 10, 'By Team'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1003, 178, 12, 13, 'By Team'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1004, 192, 11, 17, 'By Player'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1004, 203, 11, 20, 'By Player'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PenaltyShootoutDetails(TeamID, PlayerID, TournamentId, GoalScore, PenaltyType)
VALUES
(
1002, 124, 12, 15, 'By Player'
);



---------------------------------------------------------------Goalkeeper------------------------------------------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
111, 87, 85, 92, 86, 60, 90
);

/* INSERT QUERY NO: 2 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
112, 84, 87, 69, 88, 49, 86
);

/* INSERT QUERY NO: 3 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
133, 86, 81, 71, 88, 64, 81
);

/* INSERT QUERY NO: 4 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
154, 83, 84, 73, 84, 49, 83
);

/* INSERT QUERY NO: 5 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
165, 84, 85, 74, 86, 50, 89
);

/* INSERT QUERY NO: 6 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
173, 85, 86, 89, 88, 55, 87
);

/* INSERT QUERY NO: 7 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
178, 81, 86, 91, 84, 51, 88
);

/* INSERT QUERY NO: 8 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
185, 85, 88, 90, 82, 58, 85
);

/* INSERT QUERY NO: 9 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
192, 82, 84, 89, 97, 58, 88
);

/* INSERT QUERY NO: 10 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
203, 80, 89, 94, 87, 69, 84
);

/* INSERT QUERY NO: 11 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
212, 82, 86, 78, 88, 62, 94
);

/* INSERT QUERY NO: 12 */
INSERT INTO Goalkeeper(PlayerID, DivingSkills, HandlingSkills, Kicking, Reflexes, Speed, Positioning)
VALUES
(
219, 81, 84, 89, 85, 68, 90
);
----------------------------------------------------------------------CoachRecord-----------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
123, 58, 52, 15, 120, 'forward'
);

/* INSERT QUERY NO: 2 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
114, 150, 60, 1, 300, 'midfielder'
);

/* INSERT QUERY NO: 3 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
138, 42, 118, 13, 174, 'defender'
);

/* INSERT QUERY NO: 4 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
137, 54, 69, 12, 133, 'midfielder'
);

/* INSERT QUERY NO: 5 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
118, 180, 56, 4, 246, 'midfielder'
);

/* INSERT QUERY NO: 6 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
157, 150, 65, 3, 235, 'forward'
);

/* INSERT QUERY NO: 7 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
124, 60, 20, 6, 155, 'midfielder'
);

/* INSERT QUERY NO: 8 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
158, 89, 32, 10, 200, 'defender'
);

/* INSERT QUERY NO: 9 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
134, 66, 22, 2, 190, 'forward'
);

/* INSERT QUERY NO: 10 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
113, 78, 12, 11, 120, 'midfielder'
);

/* INSERT QUERY NO: 11 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
146, 56, 33, 5, 100, 'defender'
);

/* INSERT QUERY NO: 12 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
128, 100, 40, 17, 212, 'forward'
);

/* INSERT QUERY NO: 13 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
130, 78, 31, 20, 134, 'forward'
);

/* INSERT QUERY NO: 14 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
117, 99, 27, 7, 208, 'midfielder'
);

/* INSERT QUERY NO: 15 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
160, 84, 30, 9, 170, 'defender'
);

/* INSERT QUERY NO: 16 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
126, 74, 41, 18, 197, 'midfielder'
);

/* INSERT QUERY NO: 17 */
INSERT INTO CoachRecords(CoachID, NumOfGamesWonasCoach, NumOfGamesLostasCoach, InternationalStandings, NumOfGames, Position_playedin)
VALUES
(
148, 53, 19, 14, 110, 'forward'
);

-----------------------------------------------------------------------PlayerGameRecord------------------------------------------------------------------


/* INSERT QUERY NO: 1 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
100, 575, 982, 338, 125
);

/* INSERT QUERY NO: 2 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
101, 621, 948, 404, 107
);

/* INSERT QUERY NO: 3 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
102, 955, 886, 500, 440
);

/* INSERT QUERY NO: 4 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
103, 1124, 816, 720, 350
);

/* INSERT QUERY NO: 5 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
104, 793, 806, 510, 220
);

/* INSERT QUERY NO: 6 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
105, 511, 795, 330, 181
);

/* INSERT QUERY NO: 7 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
106, 997, 782, 700, 227
);

/* INSERT QUERY NO: 8 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
107, 1000, 780, 885, 167
);

/* INSERT QUERY NO: 9 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
108, 826, 775, 525, 267
);

/* INSERT QUERY NO: 10 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
109, 840, 775, 669, 105
);

/* INSERT QUERY NO: 11 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
110, 820, 736, 650, 103
);

/* INSERT QUERY NO: 12 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
111, 793, 735, 598, 115
);

/* INSERT QUERY NO: 13 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
112, 566, 678, 348, 147
);

/* INSERT QUERY NO: 14 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
113, 637, 674, 486, 201
);

/* INSERT QUERY NO: 15 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
114, 474, 663, 249, 204
);

/* INSERT QUERY NO: 16 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
115, 946, 630, 673, 325
);

/* INSERT QUERY NO: 17 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
116, 641, 611, 456, 120
);

/* INSERT QUERY NO: 18 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
117, 369, 597, 200, 160
);

/* INSERT QUERY NO: 19 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
118, 631, 591, 333, 222
);

/* INSERT QUERY NO: 20 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
119, 686, 582, 352, 300
);

/* INSERT QUERY NO: 21 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
120, 504, 581, 300, 194
);

/* INSERT QUERY NO: 22 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
121, 839, 576, 578, 308
);

/* INSERT QUERY NO: 23 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
122, 572, 574, 325, 187
);

/* INSERT QUERY NO: 24 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
123, 966, 573, 764, 225
);

/* INSERT QUERY NO: 25 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
124, 430, 569, 214, 226
);

/* INSERT QUERY NO: 26 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
125, 458, 569, 225, 201
);

/* INSERT QUERY NO: 27 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
126, 814, 568, 630, 210
);

/* INSERT QUERY NO: 28 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
127, 837, 568, 650, 202
);

/* INSERT QUERY NO: 29 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
128, 712, 565, 521, 110
);

/* INSERT QUERY NO: 30 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
129, 1058, 563, 890, 210
);

/* INSERT QUERY NO: 31 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
130, 956, 562, 701, 200
);

/* INSERT QUERY NO: 32 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
131, 615, 561, 499, 147
);

/* INSERT QUERY NO: 33 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
132, 537, 556, 333, 111
);

/* INSERT QUERY NO: 34 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
133, 427, 554, 225, 202
);

/* INSERT QUERY NO: 35 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
134, 981, 551, 755, 207
);

/* INSERT QUERY NO: 36 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
135, 545, 549, 303, 201
);

/* INSERT QUERY NO: 37 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
136, 797, 545, 554, 202
);

/* INSERT QUERY NO: 38 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
137, 598, 544, 369, 169
);

/* INSERT QUERY NO: 39 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
138, 526, 539, 399, 114
);

/* INSERT QUERY NO: 40 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
139, 604, 538, 496, 201
);

/* INSERT QUERY NO: 41 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
140, 951, 538, 799, 201
);

/* INSERT QUERY NO: 42 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
141, 433, 534, 300, 120
);

/* INSERT QUERY NO: 43 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
142, 577, 531, 345, 145
);

/* INSERT QUERY NO: 44 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
143, 678, 526, 490, 224
);

/* INSERT QUERY NO: 45 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
144, 725, 518, 520, 256
);

/* INSERT QUERY NO: 46 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
145, 852, 517, 678, 253
);

/* INSERT QUERY NO: 47 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
146, 703, 513, 556, 200
);

/* INSERT QUERY NO: 48 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
147, 587, 510, 365, 145
);

/* INSERT QUERY NO: 49 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
148, 634, 509, 487, 214
);

/* INSERT QUERY NO: 50 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
149, 820, 509, 710, 90
);

/* INSERT QUERY NO: 51 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
150, 592, 507, 600, 150
);

/* INSERT QUERY NO: 52 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
151, 753, 507, 587, 231
);

/* INSERT QUERY NO: 53 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
152, 805, 504, 620, 234
);

/* INSERT QUERY NO: 54 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
153, 905, 503, 800, 100
);

/* INSERT QUERY NO: 55 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
154, 729, 502, 606, 100
);

/* INSERT QUERY NO: 56 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
155, 610, 500, 490, 120
);

/* INSERT QUERY NO: 57 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
156, 750, 490, 525, 220
);

/* INSERT QUERY NO: 58 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
157, 751, 491, 356, 123
);

/* INSERT QUERY NO: 59 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
158, 785, 564, 347, 154
);

/* INSERT QUERY NO: 60 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
159, 745, 742, 458, 224
);

/* INSERT QUERY NO: 61 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
160, 895, 844, 468, 259
);

/* INSERT QUERY NO: 62 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
161, 854, 325, 587, 356
);

/* INSERT QUERY NO: 63 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
162, 852, 555, 894, 456
);

/* INSERT QUERY NO: 64 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
163, 633, 879, 745, 401
);

/* INSERT QUERY NO: 65 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
164, 652, 456, 852, 487
);

/* INSERT QUERY NO: 66 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
165, 987, 465, 874, 236
);

/* INSERT QUERY NO: 67 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
166, 569, 565, 745, 245
);

/* INSERT QUERY NO: 68 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
167, 458, 545, 765, 287
);

/* INSERT QUERY NO: 69 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
168, 785, 523, 745, 268
);

/* INSERT QUERY NO: 70 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
169, 741, 541, 459, 245
);

/* INSERT QUERY NO: 71 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
170, 895, 532, 563, 123
);

/* INSERT QUERY NO: 72 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
171, 745, 547, 489, 145
);

/* INSERT QUERY NO: 73 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
172, 963, 587, 785, 168
);

/* INSERT QUERY NO: 74 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
173, 745, 454, 854, 169
);

/* INSERT QUERY NO: 75 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
174, 741, 423, 468, 245
);

/* INSERT QUERY NO: 76 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
175, 520, 421, 459, 324
);

/* INSERT QUERY NO: 77 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
176, 546, 425, 425, 125
);

/* INSERT QUERY NO: 78 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
177, 456, 563, 785, 236
);

/* INSERT QUERY NO: 79 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
178, 897, 546, 745, 356
);

/* INSERT QUERY NO: 80 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
179, 965, 521, 741, 321
);

/* INSERT QUERY NO: 81 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
180, 756, 578, 756, 324
);

/* INSERT QUERY NO: 82 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
181, 757, 589, 659, 358
);

/* INSERT QUERY NO: 83 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
182, 854, 521, 648, 228
);

/* INSERT QUERY NO: 84 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
183, 635, 458, 621, 128
);

/* INSERT QUERY NO: 85 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
184, 765, 459, 356, 245
);

/* INSERT QUERY NO: 86 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
185, 894, 458, 333, 236
);

/* INSERT QUERY NO: 87 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
186, 659, 487, 785, 125
);

/* INSERT QUERY NO: 88 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
187, 745, 548, 548, 129
);

/* INSERT QUERY NO: 89 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
188, 568, 563, 863, 254
);

/* INSERT QUERY NO: 90 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
189, 569, 547, 569, 236
);

/* INSERT QUERY NO: 91 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
190, 478, 523, 659, 245
);

/* INSERT QUERY NO: 92 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
191, 587, 542, 456, 249
);

/* INSERT QUERY NO: 93 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
192, 566, 547, 854, 248
);

/* INSERT QUERY NO: 94 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
193, 987, 521, 827, 268
);

/* INSERT QUERY NO: 95 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
194, 456, 658, 832, 156
);

/* INSERT QUERY NO: 96 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
195, 789, 601, 869, 159
);

/* INSERT QUERY NO: 97 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
196, 568, 548, 874, 148
);

/* INSERT QUERY NO: 98 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
197, 487, 549, 895, 136
);

/* INSERT QUERY NO: 99 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
198, 434, 547, 756, 125
);

/* INSERT QUERY NO: 100 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
199, 333, 521, 458, 135
);

/* INSERT QUERY NO: 101 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
200, 897, 478, 745, 129
);

/* INSERT QUERY NO: 102 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
201, 854, 569, 569, 147
);

/* INSERT QUERY NO: 103 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
202, 823, 547, 745, 169
);

/* INSERT QUERY NO: 104 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
203, 812, 578, 785, 248
);

/* INSERT QUERY NO: 105 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
204, 999, 548, 742, 125
);

/* INSERT QUERY NO: 106 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
205, 879, 548, 836, 214
);

/* INSERT QUERY NO: 107 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
206, 933, 521, 548, 236
);

/* INSERT QUERY NO: 108 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
207, 458, 547, 745, 254
);

/* INSERT QUERY NO: 109 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
208, 897, 529, 756, 289
);

/* INSERT QUERY NO: 110 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
209, 888, 574, 896, 245
);

/* INSERT QUERY NO: 111 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
210, 785, 532, 845, 246
);

/* INSERT QUERY NO: 112 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
211, 569, 549, 741, 236
);

/* INSERT QUERY NO: 113 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
212, 568, 487, 265, 325
);

/* INSERT QUERY NO: 114 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
213, 456, 326, 639, 214
);

/* INSERT QUERY NO: 115 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
214, 587, 569, 985, 236
);

/* INSERT QUERY NO: 116 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
215, 879, 541, 745, 245
);

/* INSERT QUERY NO: 117 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
216, 569, 459, 735, 214
);

/* INSERT QUERY NO: 118 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
217, 785, 587, 695, 247
);

/* INSERT QUERY NO: 119 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
218, 745, 421, 856, 365
);

/* INSERT QUERY NO: 120 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
219, 563, 452, 521, 345
);

/* INSERT QUERY NO: 121 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
220, 785, 412, 532, 347
);

/* INSERT QUERY NO: 122 */
INSERT INTO PlayerGameRecord(PlayerId, NumOfGamesPlayed, NumOfGoalsScored, NumOfGamesWonAsPlayer, NumOfGamesLostAsPlayer)
VALUES
(
221, 897, 584, 578, 268
);

==================================================================================================================================================

/*1)Implemented a function to get age of each player. Computed based on Date of Birth and Player ID */

CREATE FUNCTION GetFullNameAge
(@playerId int) 
	RETURNS TABLE 
	AS 
	RETURN (
			SELECT  
                CONCAT(pd.FirstName, ' ', pd.LastName) as Fullname,
                DATEDIFF(hour, pd.DateOfBirth ,GETDATE())/8766 AS Age       
				from Project_Team8.dbo.PlayerDetails pd		
				WHERE pd.PlayerID = @playerId
        );
       
select * from GetFullnameAge(103)


/*2)Implemented view to get detailed player skills based on data from player skills table*/

CREATE VIEW PlayerSkillsDetails
      AS 
      SELECT pd.PlayerID, ps.PlayerSkills, pgr.NumOfGamesPlayed, pgr.NumOfGamesWonAsPlayer,
      pgr.NumOfGamesLostAsPlayer
      
      FROM Project_Team8.dbo.PlayerDetails pd 
      	INNER JOIN Project_Team8.dbo.PlayerSkills ps 
      		ON ps.PlayerID = pd.PlayerID
      	Inner Join Project_Team8.dbo.PlayerGameRecord pgr 
      		ON pgr.PlayerID = pd.PlayerID;
      	
SELECT * FROM PlayerSkillsDetails;

/*3)Implemented view to get complete detailed information of each tournament played. The view provides details of coach,refere and team that played in a given tournament*/

CREATE VIEW vTournamentDetails
      AS 
      SELECT tr.TeamID as TeamID, td.Years As Year, td.Place as Place,
      cd.Club As Club,
      CONCAT(cd.FirstName, ' ', cd.LastName) as Coach,
      CONCAT(rd.FirstName, ' ', rd.LastName) as Refree
      
      FROM Project_Team8.dbo.TeamRecords tr 
      INNER JOIN Project_Team8.dbo.TournamentDetails td 
             ON tr.CoachID = td.CoachID
      INNER  JOIN Project_Team8.dbo.CoachDetails cd 
      		ON td.CoachID = cd.CoachID
      INNER  JOIN Project_Team8.dbo.RefreeDetails rd 
      		ON rd.TournamentId = td.TournamentId
             ; 
             
SELECT * FROM vTournamentDetails
DROP VIEW vTournamentDetails;

/*4) Implement a check constraint to make sure that an injured player whose recovery rate is less than 65 would not be included in the coming matches.*/

Go
Create function CheckInjury (@playerID int)
Returns smallint
As
Begin 
Declare @count smallint =0 
select @count = COUNT(playerID)
from dbo.PlayerFitness
where PlayerID = @playerID
AND Injury = 'High'
AND RecoveryRate < '55'
Return @count
END
GO

Alter table PlayerDetails ADD Constraint checkInjury CHECK (dbo.CheckInjury(@playerID)=0)

/*5) Implemented a trigger to check the PreferedPosition table each time the PreferedPosition of a player is changed.*/

Go
CREATE TRIGGER PositionTrigger
ON PreferedPosition
AFTER INSERT,UPDATE, DELETE
AS
BEGIN
DECLARE @id int;
SET @id = ISNULL((SELECT PlayerID FROM Inserted), (SELECT PlayerID FROM Deleted));
UPDATE dbo.PreferedPosition SET LastModified  = GETDATE()
WHERE PlayerID = @id
END