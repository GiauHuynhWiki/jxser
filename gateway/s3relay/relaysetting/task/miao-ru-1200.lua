Include("\\RelaySetting\\Task\\bosswhere.lua")
Include("\\RelaySetting\\Task\\GoldBossHead.lua");
Sid = 51312
Interval = 1440;
Count = 0;
StartHour=12;
StartMin=0;

function NewBoss()
	str = "Nghe n�i Nga Mi �� t� g�n nh�t �� xu�ng n�i!"
	GlobalExecute(format("dw AddLocalNews([[%s]])", str));
	return 1, where["miaoru"][Random(getn(where.miaoru))+1], 513, 90;
end;



