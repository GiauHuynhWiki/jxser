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
	--���÷�������
	TaskName("datusha")
	
	local  nInterval = 60
	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)
	
	TaskTime(nNextHour, nNextMinute);

	--���ü��ʱ�䣬��λΪ����
	TaskInterval(nInterval) --nInterval����һ��
	--���ô���������0��ʾ���޴���
	

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
		local szMsg = "Lo�n Chi�n C�u C�c �� ��n gi� b�o danh, m�i ng��i nhanh ch�n ��n Ba L�ng Huy�n g�p Ch��ng ��ng Cung N� �� ghi danh."
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
