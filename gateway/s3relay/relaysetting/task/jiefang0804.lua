
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
	TaskName("birthday0905")
	
	local  nInterval = 30;
	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)
	--if nNextHour ~= 20 then
		--nNextHour, nNextMinute = 20, 0
	--end
	
	TaskTime(nNextHour	, nNextMinute);
	--设置间隔时间，单位为分钟
	TaskInterval(nInterval) --15分钟一次
	
	--设置触发次数，0表示无限次数
	TaskCountLimit(0)
	local szMsg = format("=================%s BAT DAU %d:%d VA %d PHUT SAU KET THUC=======", "HOAT DONG GIET NHIM BEO PHI",nNextHour, nNextMinute, nInterval)
	OutputMsg(szMsg);
end

function TaskContent()
	local nTime = tonumber(date("%H%M"))
	local n_date = tonumber(date("%Y%m%d"));
	local n_weekid = tonumber(date("%w"));
	local n_hour = tonumber(date("%H"));

	if (n_date > 20100719 or n_date < 20510619) then
		return
	end
	
	local flag = 0
	if (nTime >= 1200 and nTime < 1800) then
		flag = 1
	elseif (nTime >= 1900 and nTime < 2300) then
		flag = 1
	end
	if flag == 1 then
		local szMsg = "Ho箃 ng gi誸 Nh輒 b衞 ph?  m?, c竎 i hi謕 h穣 mau n 7 Th祅h th?, 8 T﹏ th? th玭  t譵!"
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)", szMsg))
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		GlobalExecute(format("dwf \\script\\event\\birthday_jieri\\200905\\panghaozhu\\addnpc_haozhu.lua birthday0905_addnpc_haozhu(%d)", 15));
		OutputMsg("=================NHIEM BEO PHI---RUN.....============== ");
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


