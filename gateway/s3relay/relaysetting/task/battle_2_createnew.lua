-- 国战宋金
-- DongZhi
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "宋金国战总调动" );	--任务名称
	TaskTime( 20, 00 );				--启动时间
	TaskInterval(1440);				--间隔时间:一天
	TaskCountLimit(0);				--无次数限制
	
	OutputMsg("KHOI DONG NHIEM VU TONG KIM CHIEN QUOC ")	
end

function TaskContent()
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 then
		OutputMsg(" Create GUOZHAN New Battle ")	
		battle_StartNewIssue(2, 3);	
	end

end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
