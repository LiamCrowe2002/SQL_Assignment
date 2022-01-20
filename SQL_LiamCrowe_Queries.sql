use RugbyClub;

-- Lists players who live in Carrick and Tramore
select distinct concat(fname, ' ', lname) as "Name" from Player where town in ('Carrick On Suir', 'Tramore');

-- Give the name of people with the team ID between 1 and 2
select distinct concat(fname, ' ', lname) as "Name" from Player where teamId between 1 and 2;

-- Returns name of coach where the town begins with letter T e.g Tramore.
select distinct concat(fname, ' ', lname) as "Name" from Coach where town like 'T%';

-- Returns name, DOB, from Player table and MembershipNo from membership table
select distinct membershipFee, concat(fname, ' ', lname)as Name, DOB from PLayer natural join Membership; 

-- Below groups the teamID with the name a joins which ageGroup they are associated to
select distinct teamId, ageGroup, concat(fname, ' ', lname)as Name from  PLayer natural join Team;

-- Counts the number of towns that are associated with playerId linked to that county
select count(playerId), Town from Player group by Town;

-- Counts the number of towns that are associated with playerId linked to that county. The playerId is greater or equal to 2
select count(playerId), Town from Player group by Town having count(playerId) >= 2;

-- Orders all the details in PLayer table to be ordered by teamId 
select * from PLayer ORDER by teamId;

-- The teamId matches the name and age group of the players.
select distinct teamId, ageGroup, concat(fname, ' ', lname)as Name from  PLayer natural join Team;


