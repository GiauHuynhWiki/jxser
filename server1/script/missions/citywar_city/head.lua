--1���볡�ص������ͳһ��һ���ص㣬��������Ʊ��npcͳһ��һ��
--2��Ʊ��ʵ�ַ�������ʱ�����ˣ�������Щ�ټӰ�
--
--��ѷ� ����ս
--2006-11-22
--by �ӷ���
IncludeLib("FILESYS");
IncludeLib("TITLE");
IncludeLib("SETTING");
IncludeLib("BATTLE");


TSK_TEMP_CURTIME = 114
TSK_TEMP_CURCOUNT = 115

tb_CW_MEDICINE =
{
	{10, {6,1,1302,1,1,1}, 1000, "Ng� hoa ng�c l� ho�n - c�ng th�nh chi�n."},
	{11, {6,1,1303,1,1,1}, 800, "C�u chuy�n ho�n h�n ��n - c�ng th�nh chi�n"},
	{12, {6,1,1304,1,1,1}, 800, "Th� � ho�n h�n ��n - c�ng th�nh chi�n"},
	{13, {6,1,1305,1,1,1}, 800, "Long di�n h�a ��c ��n - c�ng th�nh chi�n"},
}

MISSIONID = 6;
FRAME2TIME = 18;	--18֡��Ϸʱ���൱��1����
REPORTTIME 	= 60 * FRAME2TIME; --60�빫��һ��ս��
GAMETIME 	= 90 * 60  * FRAME2TIME; -- ��ս��ʱ��Ϊ90����
CITYWAR_TOP10_EXP = 3000000;


MS_STATE = 1; --�����м�¼����״̬�ı���ID
--�ñ���ָ���״ֵ̬0��ʾս��Ϊ�򿪣�1��ʾս�۱����У�2��ʾս��ս�������У�3��ʾս�۸ոս�����
MS_STORETASKID = 240;
MS_NEWSVALUE = 10; --�����д�����ű����ĵط�
MS_SYMBOLCOUNT = 3; --ʯ��������
MS_SYMBOLBEGIN = 15;--��¼ʯ��״̬�ı���ID��һ����ţ���MS_SYMBOLBEIN ��MS_SYMBOLBEGIN + MS_SYMBOLCOUNT�ֱ��¼����ʯ����״ֵ̬

MS_STONENPC1 = 25; 
MS_STONENPC2 = 26;
MS_STONENPC3 = 27;

MS_TSCBEGIN = 50;-- mission�м�¼Ͷʯ���Ƿ����е�״̬��־
g_nDoorCount = 3; --���ŵ�����
g_nMaxTscPerDoor = 3; --ÿ���������Գ��ֵ�Ͷʯ������
MS_GCCBEGIN = MS_TSCBEGIN + g_nDoorCount * g_nMaxTscPerDoor;
g_nMaxGccPerDoor = 1; --����ÿ���������ڹ��ǳ�������
--gccbegin = 59
--toolbegin = 62
--doorbegin = 62 + 6 = 68
MS_TOOLBEGIN = MS_GCCBEGIN + g_nMaxGccPerDoor * g_nDoorCount;
g_nMaxToolCount = 6; --�ط����ͬʱ���ڵĹ�Ӷ������

MS_DOORBEGIN = MS_TOOLBEGIN + g_nMaxToolCount; --��¼����״̬��mission����index
MS_KEY = 99


TV_TASKID = 230; 	--��¼��ҵ�ǰ����ID
TV_TASKVALUE = 231; 	--��¼��ҵ�ǰ�����ֵ,��¼������,��Ϊ1����Ϊ2
TV_TASKKEY = 232; 	--��¼��ҵ�ǰ�����key��
TV_CITYID = 233;

CS_RevId 	= 20
CS_RevData 	= 10;

MAX_CAMP1COUNT = 200;--�سǷ���������Բμӵ�����
MAX_CAMP2COUNT = 200;--���Ƿ���������Բμӵ�����
MAX_CAMP3COUNT = 50 ;--�����سǷ�������Ҫ��Э���������������
MAX_CAMP4COUNT = 50 ;--�������Ƿ�������Ҫ��Э���������������

--Move t� trap h�u doanh v�o c�ng th�nh v� l�u r��ng cho ch�t
CS_CampPos1 = {221, 1280, 2912};			--phe th�
CS_CampPos2 = {221, 1632, 3280};			--phe c�ng

STONENPCID1 = 528;				--ID NPC long tr� th�
STONENPCID2 = 530;				--ID NPC long tr� c�ng
STONELEVEL1 = 10; 				--c�p �� long tr� th�
STONELEVEL2 = 20;   				--c�p �� long tr� c�ng
STONENAME = "Bia �� ��nh th�nh ";
DOORNPCID =  532;					--ID NPC c�a th�nh
DOORLEVEL = 60;					--c�p �� npc c�a th�nh

StonePos = 					--T�a �� v� t�n c�c long tr�
{
{x = 47232, y = 94592, Name = "��nh Xuy�n Tr� "},		
{x = 45312, y = 96800, Name = "L�p D��ng Tr� "},
{x = 43392, y = 98912, Name = "B�nh Giang Tr� "},
};

DoorPos=						--t�a �� v� t�n c�a th�nh
{
{x = 1542*32, y = 3024*32, Name="��nh Xuy�n m�n"},
{x = 1478*32, y = 3087*32, Name="L�p D��ng m�n"},
{x = 1414*32, y = 3149*32, Name="B�nh Giang m�n"},
};
--DoorPos=						--t�a �� v� t�n c�a th�nh
--{
--{x = 49312, y = 96736, Name="��nh Xuy�n m�n"},
--{x = 47264, y = 98752, Name="L�p D��ng m�n"},
--{x = 45216, y = 100768, Name="B�nh Giang m�n"},
--};

DOCTORNPCID = 230;				--ID NPC b�n thu�c
DoctorPos = 					--t�a �� v� t�n b�n thu�c
{
{41472,92576,"T�y Qu�n d��c Y"},
{42272,93408,"T�y Qu�n d��c Y"},
{53120,104832,"T�y Qu�n d��c Y"},
{52640,104288,"T�y Qu�n d��c Y"},
--{61184,114176,"T�y Qu�n d��c Y"},
--{61600,114592,"T�y Qu�n d��c Y"},
--{60128,115168,"T�y Qu�n d��c Y"},
--{60672,115616,"T�y Qu�n d��c Y"},
}

--ǰ������Ͷʯ�������꣬��������Ͷ�������
TscPos=					--Toa do npc pha thanh
{
{50528,97216,50080,96480},
{49920,97312,49248,96672},
{49664,98112,49120,97504},

{48576,99360,48032,98560},
{47776,99360,47136,98688},
{47712,100192,46848,98656},

{46592,101248,45344,100576},
{45856,101408,45120,100736},
{45856,101984,45216,101472},
};

GccPos = 
{
{49856,97344},
{47808,99296},
{45632,101184},
};

OuterPos = 					
{
{222, 1613, 3185},					--t�a �� v� map v� h�u doanh phe th�
{223, 1613, 3185},					--t�a �� v� map v� h�u doanh phe c�ng
}


--ObstaclePos = 					--t�a �� ch�n khi ch�a ph� c�a th�nh m�n
--{
--{1543*32, 3023*32},					--c�a th�nh 1
--{1479*32, 3086*32},					--c�a th�nh 2
--{1415*32, 3148*32},					--c�a th�nh 3
--}

ObstaclePos = 					--t�a �� ch�n khi ch�a ph� c�a th�nh m�n
{
{49312, 96736},					--c�a th�nh 1
{47264, 98752},					--c�a th�nh 2
{45216,100768},					--c�a th�nh 3
}

----------------Title Value-------------------------------------
	RA_KILL_PL_RANK = {10, 2.334, 0.934, 0.84, 0.56, 0.35}	
 	--7 ���ʿ��	--7/3 ���Уξ	--14/15 ���ͳ��	--21/25 ��Ҹ���	--14/25 ��Ҵ�	--7/20 ���Ԫ˧
 BONUS_KILLPLAYER = 75
	BONUS_MAXSERIESKILL = 150
 	RANK_PKBONUS = {
 	{1,	6/5,7/5	,8/5,2	},
	{4/5,1,	6/5,7/5,8/5	},
	{3/5,4/5,1,	6/5,7/5	},
	{2/5,3/5,4/5,1,	6/5	},
	{1/5,2/5,3/5,4/5,1},
	};
	
	TAB_SERIESKILL =    --��¼��ͬrank����ң���PKʱ���Ƿ��¼ʵ����ն�ı���1��ʾ��¼��0��ʾ����¼
	{
		{1,1,1,1,1},
		{1,1,1,1,1},
		{1,1,1,1,1},
		{0,1,1,1,1},
		{0,0,1,1,1},
	};
	
	BALANCE_MAMCOUNT = 15
	TAB_RANKBONUS = {0, 1000, 3000, 6000,10000};
	RANK_SKILL = 661;
	TAB_RANKMSG = {
	"B�n ���c phong l� <color=white>Binh S�<color>!",
	"Hi�n �ang ���c t�n phong l�m <color=0xa0ff>Hi�u �y<color>!",
	"Hi�n �ang ���c t�n phong l�m <color=0xff>Th�ng l�nh<color>!",
	"Hi�n �ang ���c t�n phong l�m <color=yellow>Ph� t��ng<color>!",
	"Hi�n �ang ���c t�n phong l�m <color=yellow><bclr=red>��i t��ng<bclr><color>!",
	"B�n ���c phong l� <color=yellow>Nguy�n So�i<color=>!"}
	
	tbRANKNAME={"<color=white>Binh S�<color>", "<color=0xa0ff>Hi�u �y<color>", "<color=0xff>Th�ng L�nh<color>", "<color=yellow>Ph� T��ng<color.", "<color=yellow><bclr=red>��i T��ng<bclr><color>" , "<color=black>Nguy�n So�i<color>"}
	
	TITLE_BONUSRANK1 = 0		--��Ϊ��Ӧͷ���������ֵ
	TITLE_BONUSRANK2 = 10000
	TITLE_BONUSRANK3 = 20000
	TITLE_BONUSRANK4 = 40000
	TITLE_BONUSRANK5 = 60000
	TITLE_BONUSRANK6 = 80000
	
	TITLE_PL2RANK1_N = 400		--��Ӧͷ�ε�����������
	TITLE_PL2RANK2_N = 60
	TITLE_PL2RANK3_N = 25
	TITLE_PL2RANK4_N = 10
	TITLE_PL2RANK5_N = 5
	TITLE_PL2RANK6_N = 1
	
---------------------------------------------------------------
TV_LASTDEATHTIME = 2306	
TV_LASTDEATHMAPX = 2307
TV_LASTDEATHMAPY = 2308
TV_SERIESKILL_REALY = 2305  --��ҵ�ǰ��ʵ����նֵ���߼�ɱ�Ƚϵͼ�����ң�����ն����������ʵ��ն��

	
--BATTLE TASK---------------------
		PL_TOTALPOINT = 1
		PL_KILLPLAYER = 2
		PL_KILLNPC = 3
		PL_BEKILLED = 4
		PL_SNAPFLAG = 5
		PL_KILLRANK1 = 6
		PL_KILLRANK2 = 7
		PL_KILLRANK3 = 8
		PL_KILLRANK4 = 9
		PL_KILLRANK5 = 10
		PL_KILLRANK6 = 11
		PL_KILLRANK7 = 12
		PL_MAXSERIESKILL = 13		--�������ս�ֵ������ն��
		PL_SERIESKILL = 14			--��ҵ�ǰ����ն��
		PL_FINISHGOAL = 15
		PL_1VS1 = 16
		PL_GETITEM = 17
		PL_WINSIDE = 18
		PL_PRISEGRADE = 19	
		PL_AVERAGEGRADE = 20
		PL_WINGRADE = 21	
		PL_PARAM1 = 22
		PL_PARAM2 = 23
		PL_PARAM3 = 24
		PL_PARAM4 = 25
		PL_PARAM5 = 26
		PL_CURRANK = 27	-- =PL_PARAM6 = 27 ��ʾ��ҵ�ǰ�Ĺ�ְ��Ŀǰʹ�õ�6�Ų���
		
		PL_BATTLEID=41
		PL_RULEID=42
		PL_BATTLECAMP = 43
		PL_BATTLESERIES = 44 --��¼�����һ�βμ�ս�۵�ս����ˮ��
		PL_KEYNUMBER = 45
		PL_LASTDEATHTIME = 46
		PL_BATTLEPOINT = 47	--��¼��ұ�ս�۵��ܻ��֣��ܻ�����������μӵĸ���ս�ֵĻ����ܺ�, E(PL_TOTALPOINT1 + PL_TOTALPOINT2+ ...)
		PL_ROUND = 48

		GAME_KEY = 1
		GAME_BATTLEID = 2
		GAME_RULEID = 3
		GAME_MAPID = 4	
		GAME_CAMP1 = 5
		GAME_CAMP2 = 6
		GAME_MAPICONID = 7
		GAME_RESTTIME = 8
		GAME_LEVEL = 9 
		GAME_MODE = 10
		GAME_CAMP1AREA= 11
		GAME_CAMP2AREA= 12
		GAME_BATTLESERIES = 13
		GAME_ROUND = 14

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~�����ķָ���~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function CheckWin()
	local nResult = 0;--�ط�ʯ��������
	local nCount = MS_SYMBOLCOUNT;
	for i  = 1, nCount do 
		 if (GetMissionV(MS_SYMBOLBEGIN + i - 1) == 2) then 
		 	nResult = nResult + 1;
		 end;
	end
	return nResult;
end;
--------------------------------------------------------------------------------------
function GameWin(nWinner)
	if (nWinner == 1) then 
		str = "Chung cu�c" .. "phe th�:"..GetGamerName(1).."Th�ng l�i l�n r�i, ti�p t�c duy tr�! "..GetGameCity().."Gi�nh quy�n th�ng tr�! Ti�p t�c duy tr� ";
		NotifyWarResult(GetWarOfCity(), 0)
	else
		str= "Chung cu�c" .. "phe c�ng:"..GetGamerName(2) .. "Thu ���c ��i th�ng l�i! Th�ng l�i r�i! "..GetGameCity().."Gi�nh quy�n th�ng tr�! Ti�p t�c duy tr� ";
	
		NotifyWarResult(GetWarOfCity(), 1)
	end;
	
	WriteLog(date("%m%d-%H:%M")..str)
	AddGlobalNews(str); 
	CloseMission(MISSIONID);
end;

--------------------------------------------------------------------------------------
-----���봫���ɷ����룬����62s = 1m2s
function GetMinAndSec(nSec)
	nRestMin = floor(nSec / 60);
	nRestSec = mod(nSec,60)
	return nRestMin, nRestSec;
end;
---------------------------------------------------------------------------
--��ȡ��ս�ĳ���
function GetWarOfCity()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;
---------------------------------------------------------------------------

function GetGamerName(nWinner)
	CityID = GetWarOfCity();
	Tong1, Tong2=GetCityWarBothSides(CityID);
	if (nWinner == 1) then 
		return Tong2;
	else 
		return Tong1;
	end;
end;
----------------------------------------------------------------------------
function GetGameCity()
	CityID = GetWarOfCity();
	return GetCityAreaName(CityID);
end;
----------------------------------------------------------------------------

function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;--��������������������,����������Ļ����ͷ���0

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 600) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end;

function CreateObstacle(X,Y)
	for i=-10,3 do 
		AddObstacleObj(359, 221, X + i * 16 ,Y - i * 16)
	end
end;

function ClearObstacle(X,Y)
	for i=-10,3 do 
		ClearObstacleObj(221, X + i * 16 ,Y - i * 16)
	end
end;

function DelNpcSafe(nNpcIndex)
	WriteLog(GetLoop()..": DelNpcSafe:"..nNpcIndex);
	
	if (nNpcIndex <= 0 )  then
		return
	end
	
	PIdx = NpcIdx2PIdx(nNpcIndex);
	if (PIdx > 0) then 
		WriteLog("L�i!!! DelNpc mu�n x�a b� m�t gamer ");
		return
	end;
	
	DelNpc(nNpcIndex)
end;

function sf_onplayerleave()
	RestoreOwnFeature()
end

---------------------L�y �i�m set danh hi�u------------------------------------------
function bt_JudgePLAddTitle()
	local nCurRank = BT_GetData(PL_CURRANK)
	if ( nCurRank >= getn(TAB_RANKBONUS)) then
		return
	end
	if (BT_GetData(PL_TOTALPOINT) < TAB_RANKBONUS[nCurRank + 1]) then
		return	
	end
	local nRankCount = getn(TAB_RANKBONUS)
	for i = 1, getn(TAB_RANKBONUS) do 
		if (BT_GetData(PL_TOTALPOINT) >= TAB_RANKBONUS[nRankCount - i + 1] ) then
				bt_RankEffect(nRankCount - i + 1)
				return
		end
	end
end
function bt_RankEffect(rank)
	if (rank == 0) then
		rank = 1
	end
	local campnum = 89
	if (GetCurCamp() == 2) then
		campnum = campnum + 5
	end
	Title_AddTitle(campnum + rank - 1, 0, 9999999)
	Title_ActiveTitle(campnum + rank - 1)
--	AddSkillState(RANK_SKILL, rank - 1, 0, 999999);
	Msg2Player(TAB_RANKMSG[rank]);
	BT_SetData(PL_CURRANK, rank);
end

-------------------------add �i�m c�ng hi�n----------------------------------

function bt_addtotalpoint(point)
	if (point == 0) then
		return
	end
	BT_SetData(PL_TOTALPOINT, BT_GetData(PL_TOTALPOINT) + point)
	bt_JudgePLAddTitle()
end

--------------------------�������---------------------------------------
function ResetBonus()
	BT_SetTypeBonus(PL_KILLPLAYER, 1, floor(BONUS_KILLPLAYER))
	BT_SetTypeBonus(PL_MAXSERIESKILL, 1, floor(BONUS_MAXSERIESKILL))
	
	BT_SetTypeBonus(PL_KILLPLAYER, 2, floor(BONUS_KILLPLAYER))
	BT_SetTypeBonus(PL_MAXSERIESKILL, 2, floor(BONUS_MAXSERIESKILL))
end
------------------------------------------------------------------------------------
-------------------------------------------------------------------------
function bt_setnormaltask2type()
--701�Ѿ���ռ�ã����Ը�����751
BT_SetType2Task(1, 751)
for i = 2, 50 do 
	BT_SetType2Task(i, 700 + i);
end
end