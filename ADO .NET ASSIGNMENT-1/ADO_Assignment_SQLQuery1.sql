create table FootBallLeague(
MatchID int Primary key, 
TeamName1 nvarchar(50), 
TeamName2 nvarchar(50), 
Status nvarchar(50), 
WinningTeam nvarchar(50), 
Points int
)

select * from FootBallLeague

create procedure sp_Insert_FootBallLeague
(
@MatchID int,
@TeamName1 nvarchar(30),
@TeamName2 nvarchar(30),
@Status nvarchar(30),
@WinningTeam nvarchar(20),
@Points int
)
as
Begin
insert into FootBallLeague values(@MatchID, @TeamName1, @TeamName2, @Status, @WinningTeam, @Points)
End

Exec sp_Insert_FootBallLeague 
	@MatchId=1001, 
	@TeamName1= 'Italy',	
	@TeamName2= 'France',	
	@Status = 'Win',	
	@WinningTeam = 'France',
	@Points =  4

Exec sp_Insert_FootBallLeague 
	@MatchId=1002, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'Portugal',	
	@Status = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2

Exec sp_Insert_FootBallLeague 
	@MatchId=1003, 
	@TeamName1= 'England',	
	@TeamName2= 'Japan',	
	@Status = 'Win',	
	@WinningTeam = 'England',
	@Points =  4

Exec sp_Insert_FootBallLeague 
	@MatchId=1004, 
	@TeamName1= 'USA',	
	@TeamName2= 'Russia',	
	@Status = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4

Exec sp_Insert_FootBallLeague 
	@MatchId=1005, 
	@TeamName1= 'Portugal',	
	@TeamName2= 'Italy',	
	@Status = 'Draw',	
	@WinningTeam = null,
	@Points =  2

Exec sp_Insert_FootBallLeague 
	@MatchId=1006, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'France',	
	@Status = 'Win',	
	@WinningTeam = 'Brazil',
	@Points =  4

Exec sp_Insert_FootBallLeague 
	@MatchId=1007, 
	@TeamName1= 'England',	
	@TeamName2= 'Russia',	
	@Status = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4
	
Exec sp_Insert_FootBallLeague 
	@MatchId=1008, 
	@TeamName1= 'Japan',	
	@TeamName2= 'USA',	
	@Status = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2

select * from FootBallLeague

