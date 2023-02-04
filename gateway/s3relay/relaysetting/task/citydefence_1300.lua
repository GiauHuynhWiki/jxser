--citydefence.lua
-- ����ս��֮�������

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- һ��һ�Σ���λ����
	TaskInterval(1440);
	-- ���ô���ʱ��
	TaskTime(13, 00);
	OutputMsg(format("PHONG HOA LIEN THANH BAT DAU %d:%d...", 13, 00));
	-- ִ�����޴�
	TaskCountLimit(0);

end

function TaskContent()
	local weekdate = CloudOpen_Defence()
	if (weekdate == nil) then
		OutputMsg("Hoat Dong Dien Ra Vao Thu 7 Va Chu Nhat Hang Tuan")
		return
	end
	if (weekdate == 0) then
		OutputMsg("'Th� Th�nh' Kim Ph��ng �� m� ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(2)");
	else
		OutputMsg("'Th� Th�nh' T�ng ph��ng �� m� ghi danh.");
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
