--close_citydefence_1700.lua
--关闭卫国战争

function TaskShedule()
	TaskName("Phong Hoa Lien Thanh");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(15, 30);
	OutputMsg(format("Phong Hoa Lien Thanh da ket thuc %d:%d...", 15, 30));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
	OutputMsg("Phong Hoa Lien Thanh da ket thuc");
	GlobalExecute("dw CityDefence_CloseMain()");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
