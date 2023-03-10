--citydefence.lua
-- 卫国战争之烽火连城

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(13, 00);
	OutputMsg(format("PHONG HOA LIEN THANH BAT DAU %d:%d...", 13, 00));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
	local weekdate = CloudOpen_Defence()
	if (weekdate == nil) then
		OutputMsg("Hoat Dong Dien Ra Vao Thu 7 Va Chu Nhat Hang Tuan")
		return
	end
	if (weekdate == 0) then
		OutputMsg("'Th? Th祅h' Kim Phng  m? ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(2)");
	else
		OutputMsg("'Th? Th祅h' T鑞g phng  m? ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(1)");
	end
end

function CloudOpen_Defence()
	local weekdate = tonumber(date("%w"))
	if (weekdate ~= 6) then
		return nil
	end
	return weekdate
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
