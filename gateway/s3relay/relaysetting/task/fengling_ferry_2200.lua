function TaskShedule()
	--��ַ��������
	TaskName("����2200")
	TaskTime(22, 0);
	
	--��ַ���ʱ�䣬��λΪ����
	TaskInterval(1440) --60����һ��
	
	--��ַ����������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("=================�Phong Lang Do 22h==================");
end

function TaskContent()
    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
