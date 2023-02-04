--CheckCondition() 需要该函数用于检查是否符合加入条件
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");

function main()

	if (GetMissionV(1) == 1) then 
			--未进入战场旁观
			if (GetTaskTemp(JOINSTATE) == 0) then
				Say("B筺 mu鑞 tham gia phe V祅g hay phe T輒?", 4, "ta mu鑞 gia nh藀 v祇 phe v祅g /ChooseCamp", "ta mu鑞 gia nh藀 v祇 phe t輒 /ChooseCamp", "Ta mu鑞 quan s竧 trc , s� n鉯 chuy謓 sau! /ChooseCamp", "в ta ngh� l筰 xem /OnCancel");
				return
			--正在旁观
			else
				if (GetCurCamp() == 0) then 
					Say("B筺 mu鑞 tham gia phe V祅g hay phe T輒?", 4, "ta mu鑞 gia nh藀 v祇 phe v祅g /ChooseCamp", "ta mu鑞 gia nh藀 v祇 phe t輒 /ChooseCamp", "в ta ngh� l筰 xem /OnCancel", "Ta mu鑞 r阨 kh醝 chi課 trng. /ChooseLeave");
					return
				else
					Say("Ngi mu鑞 r阨 kh醝 chi課 trng �?", 2, "V﹏g, Ta mu鑞 ra /ChooseLeave", "Ta v蒼 ch璦 nh xong, ch璦 mu鑞 ra. /OnCancel");	
					return
				end
			end
	else
		Say("Hi謓 v蒼 ch璦 n th阨 gian chi課 u!",0);
		return
	end;
end;

function ChooseCamp(nSel)
	
	if (CheckCondition() == 0) then
		return 
	end;
	
	if (nSel == 0) then
		JoinCamp(1)	
	elseif (nSel == 1) then
		JoinCamp(2)
	else 
		SetTaskTemp(JOINSTATE, 1);
		SetPos(CS_CampPos0[2], CS_CampPos0[3]);
	end;
end;

function OnCancel()

end;

function ChooseLeave()
	LeaveGame(0)	
end;

