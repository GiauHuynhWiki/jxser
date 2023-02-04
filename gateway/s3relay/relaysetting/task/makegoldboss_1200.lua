QY_GOLDBOSS_APOS_INFO = {
	{"C� B�ch", 566, 95, 0, {"Ph� Dung ��ng","S�n B�o ��ng","city"}}, -- ����,����,�ȼ�,����,{���ܳ��ֵĵ�ͼ}
	{"Huy�n Gi�c ��i S�", 740, 95, 0, {"Nh�n Th�ch ��ng","Thanh kh� ��ng","city"}},
	{"���ng Phi Y�n", 1366, 95, 1, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	{"Lam Y Y", 582, 95, 1, {"V� L�ng ��ng","Phi Thi�n ��ng","city"}},
	{"H� Linh Phi�u", 568, 95, 2, {"Tr��ng B�ch s�n B�c","V� Danh ��ng","city"}},
	{"Y�n Hi�u Tr�i", 744, 95, 2, {"Sa M�c s�n  ��ng 1","Sa M�c s�n  ��ng 3","city"}},
	{"M�nh Th��ng L��ng", 583, 95, 3, {"Sa m�c ��a bi�u","Sa M�c s�n  ��ng 2","city"}},
	{"Gia Lu�t T� Ly", 563, 95, 3, {"L��ng Th�y ��ng","D��ng Trung ��ng","city"}},
	{"��o Thanh Ch�n Nh�n", 562, 95, 4, {"Tr��ng B�ch s�n Nam","M�c Cao Qu�t","city"}},
	{"Tuy�n C� T�", 747, 95, 4, {"T�y S�n ��o","Phi Thi�n ��ng","city"}},
	{"V��ng T�", 739, 95, 0, {"V� L�ng ��ng","Ph� Dung ��ng","city"}},
	{"Huy�n Nan ��i S�", 1365, 95, 0, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	{"���ng B�t Nhi�m", 741, 95, 1, {"Tr��ng B�ch s�n Nam","Kho� Lang ��ng","city"}},
	{"B�ch Doanh Doanh", 742, 95, 1, {"Thanh kh� ��ng","Sa m�c ��a bi�u","city"}},
	{"Thanh Tuy�t S� Th�i", 743, 95, 2, {"T�y S�n ��o","D��ng Trung ��ng","city"}},
	{"Chung Linh T�", 567, 95, 2, {"Phi Thi�n ��ng","V� Danh ��ng","city"}},
	{"H� Nh�n Ng�", 745, 95, 3, {"Nh�n Th�ch ��ng","L��ng Th�y ��ng","city"}},
	{"�oan M�c Du�", 565, 95, 3, {"Phong L�ng ��","S�n B�o ��ng","city"}},
	{"T� ��i Nh�c", 1367, 95, 4, {"M�c B�c Th�o Nguy�n","V� L�ng ��ng","city"}},
	{"Thanh Li�n T�", 1368, 95, 4, {"Tr��ng B�ch s�n B�c","Sa M�c s�n  ��ng 3","city"}},
	{"Thanh Tuy�t S� Th�i", 743, 95, 2, {"Sa M�c s�n  ��ng 1","Sa M�c s�n  ��ng 3","city"}},
}

QY_GOLDBOSS_DPOS_INFO = {
					--{"Thanh Tuy�t S� Th�i", 743, 95, 341, 2, "giang h� truy�n thanh tuy�t s� th�i �� t�ng danh ch�n giang h�, xu�t hi�n � Chi�n Long ��ng, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\��ԭ����\\����ɱ���\\tudainhacchienlongdong.txt"},
					----{"Y�n Hi�u Tr�i", 744, 95, 336, 2, "`nghe n�i th�y ti�n s� gi� an hi�u tr�i �� xu�t hi�n � phong l�ng ��, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\��ԭ����\\����ɱ���\\yanxiaoqianboss.txt"},
					--{"H� Nh�n Ng�", 745, 95, 321, 3, "giang h� t��ng truy�n H� Nh�n Ng� xu�t hi�n � Chi�n Long ��ng, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\��ԭ����\\����ɱ���\\tudainhacchienlongdong.txt"},
					----{"Huy�n Gi�c ��i S�", 740, 95, 322, 0, "giang h� truy�n huy�n gi�c �ai s� �� t�ng danh ch�n giang h�, xu�t hi�n � Tr��ng b�ch s�n, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\������\\����ɽ´\\xuanjuedashiboss.txt"},
					----{"Tuy�n C� T�", 747, 95, 340, 4, "giang h� truy�n to�n ky t� �n c� �� l�u, ��t nhi�n xu�t hi�n � M�c cao qu�t, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\��������\\Ī�߿�\\tangburanboss.txt"},
					--{"T� ��i Nh�c", 1367, 95, 342,4, "t��ng truy�n t� ��i nh�c xu�t hi�n � vi s�n ��o, giang h� �ang c� m�t cu�c huy�t chi�n!", "\\settings\\maps\\������\\��ɽӴ\\big_goldboss.txt"},
					--{"Thanh Tuy�t S� Th�i", 743, 95, 341, 2, "Nghe n�i Thanh Tuy�t S� Th�i �� xu�t hi�n tr�n giang h�, C� ng��i �� g�p t�i Chi�n Long ��ng!", "\\settings\\maps\\��ԭ����\\����ɱ���\\tudainhacchienlongdong.txt"},					
}
Include("\\RelaySetting\\Task\\callboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	-- ���÷�������
	TaskName( "BOSS HOANG KIM XUAT HIEN VAO 12:00" );
	TaskInterval( 1440 );
	TaskTime( 12, 0 );
	TaskCountLimit( 0 );
	-- ���������Ϣ
	OutputMsg("BOSS HOANG KIM MON PHAI at 12:00");
end

function TaskContent()
	if (GetProductRegion() ~= "vn") then
		qy_makeboss_fixure(1)
		return 0;
	end;
	BigBoss.gold_boss_count = 0;
TAB_CITY_EMPTY = {}
	qy_makeboss_onlyone_pos()
	--qy_makeboss_lotsof_pos()
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
