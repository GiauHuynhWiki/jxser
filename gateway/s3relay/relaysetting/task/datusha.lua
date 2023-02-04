local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)
	
	
	local nNextHour = nStartHour
	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)
	
	if nNextMinute >= 60 then
		
		nNextHour = nNextHour + floor(nNextMinute / 60)
		nNextMinute = mod(nNextMinute, 60) 
	end
	
	if (nNextHour >= 24) then
		nNextHour = mod(nNextHour, 24);
	end;
	return nNextHour, nNextMinute
end



function TaskShedule()
	--设置方案名称
	TaskName("datusha")
	
	local  nInterval = 60
	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)
	
	TaskTime(nNextHour, nNextMinute);

	--设置间隔时间，单位为分钟
	TaskInterval(nInterval) --nInterval分钟一次
	--设置触发次数，0表示无限次数
	

	TaskCountLimit(0)
	


	local szMsg = format("=================%s BAT DAU %d:%d va %d PHUT SE KET THUC=================", "LOAN CHIEN CUU CHAU COC",nNextHour, nNextMinute, nInterval)
	OutputMsg(szMsg);
end

function TaskContent()
	local nTime = tonumber(date("%H%M"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%y%m%d"))
	local nTaskState = tonumber(date("%y%m%d%H"))
	
	

	if nTime >= 0000 and nTime <= 0010 then
		Ladder_ClearLadder(10269);
		OutputMsg("=================XOA XEP HANG LOAN CHIEN CUC CHAU COC=================")
	end
	local flag = 0
	if (nTime >= 1200 and nTime < 1300) then
		
flag = 1
	
elseif (nTime >= 1300 and nTime < 1400) then
		
flag = 1
	
elseif (nTime >= 1400 and nTime < 1500) then
		
flag = 1
	
elseif (nTime >= 1500 and nTime < 1600) then
		
flag = 1
	
elseif (nTime >= 1600 and nTime < 1700) then
		
flag = 1
	
elseif (nTime >= 1700 and nTime < 1800) then
		
flag = 1
	
elseif (nTime >= 1800 and nTime < 1900) then
		
flag = 1
	
elseif (nTime >= 1900 and nTime < 2000) then
		
flag = 1
	
elseif (nTime >= 2000 and nTime < 2100) then
		
flag = 1
	
elseif (nTime >= 2100 and nTime < 2200) then
		
flag = 1
	
elseif (nTime >= 2200 and nTime < 2300) then
		
flag = 1
	
elseif (nTime >= 2300 and nTime < 2400) then
		
flag = 1

	
end
	if flag == 1 then
		local szMsg = "Lo筺 Chi課 C鰑 C鑓  n gi� b竜 danh, m鋓 ngi nhanh ch﹏ n Ba L╪g Huy謓 g苝 Chng Жng Cung N�  ghi danh."
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)", szMsg))
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		OutputMsg("=================BAO DANH LOAN CHIEN CUU CHAU COC=================")
		
		RemoteExecute("\\script\\missions\\datusha\\datusha.lua", "DaTuShaClass:Open", 0);
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
