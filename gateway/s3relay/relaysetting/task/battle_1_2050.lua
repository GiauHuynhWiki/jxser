-- H� th�ng chi�n tr��ng T�ng Kim
-- Editor by AloneScript @ 03.07.2018

TIME_HOUR = 20
TIME_MIN = 50

function TaskShedule()
	TaskName("Chi�n tr��ng T�ng Kim v�o l�c 09:50");
	TaskInterval(1440);
	TaskTime(TIME_HOUR, TIME_MIN);
	TaskCountLimit(0);
	OutputMsg(format("[STARTED]	BATTLE [TONG KIM] %d:%d -> OK!", TIME_HOUR, TIME_MIN));
end

function TaskContent()

		Battle_StartNewRound( 1, 1 );	-- L�nh GM, kh�i ��ng h� th�ng chi�n tr��ng T�ng Kim (s� c�p)
		Battle_StartNewRound( 1, 2 );	-- L�nh GM, kh�i ��ng h� th�ng chi�n tr��ng T�ng Kim (trung c�p)
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then
		return							-- V�o ng�y th� 2 h�ng tu�n, ��ng c�a chi�n tr��ng T�ng Kim (cao c�p) thay th� cho chi�n tr��ng Thi�n T�
	else
		Battle_StartNewRound(1, 3);	-- GMָ������߼���ս��	
	end
	
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
