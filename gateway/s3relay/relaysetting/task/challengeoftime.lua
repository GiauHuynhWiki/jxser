INTERVAL_TIME = 60
function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName("Ho�t ��ng Khi�u Chi�n Th�i Gian");	
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("[STARTED] CHALLENGE OF TIME %d:%d", h, m));
	TaskCountLimit(0);
end

function TaskContent()
	local h, m = GetNextTime();
	OutputMsg(format("[RUNNING] CHALLENGE OF TIME %d:%d", h,m));
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Ho�t ��ng �Th�ch Th�c Th�i Gian� �� b�t ��u m� ra, c�c ��i tr��ng h�y nhanh ch�n ��n th�nh th� g�p Nhi�p Nh� Tr�n �� b�o danh tham gia."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
