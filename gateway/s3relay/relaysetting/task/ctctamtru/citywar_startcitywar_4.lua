Include("\\RelaySetting\\Task\\citywar_head.lua")
function TaskShedule()
	TaskName("Cong thanh chien bat dau");

	TaskInterval(1440);

	TaskTime(20, 0);

	TaskCountLimit(0);

	OutputMsg("=================[CTC Tam Tru] CONG THANH CHIEN BAT DAU=================")
end

function TaskContent()
	local nCityId=getSigningUpCity(2)
	local nWeek=tonumber(date("%w"))

	if (HinhThucCongThanh == 0) then
		StartCityWar(nCityId);
	else
		cw_start_fun(nWeek,nCityId)
	end;

	OutputMsg("=================[CTC Tam Tru] CONG THANH CHIEN BAT DAU=================")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
