delete from Boiler;
declare @i int = 0;

while (@i < 1999)
	begin
		waitfor delay '00:00:01'
			set @i = @i + 1;            
			insert into Boiler select * from BoilerPlantSmall where time = @i;
	end