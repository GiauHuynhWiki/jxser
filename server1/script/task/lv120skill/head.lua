Include("\\script\\global\\login_head.lua")
-- 120级技能任务头文件

LV120_SKILL_STATE = 2450	-- 存放当前任务状态的全局任务变量，初始值为1，为0表示任务已经完成
LV120_SKILL_ID = 2463		-- 纪录玩家120级技能ID
LOCK_MAP_SEQUENCE =		-- 存放解锁图顺序的全局任务变量
{
	{2451, 2452, 2453, 2454, 2455, 2456},	-- 第一重锁解锁图顺序
	{2457, 2458, 2459, 2460, 2461, 2462},	-- 第二重锁解锁图顺序
}

DGJ_WULINMIJI	= {6, 1, 1120}	-- 不太寻常的武林秘籍
COFFIN_MAP		= {6, 1, 1119}	-- 汴京东部事发点地图
COFFIN			= {6, 1, 1121}	-- 神秘棺木
LOCK_MAP1		= {6, 1, 1122}	-- 棺木解锁图 第一重锁
LOCK_MAP2		= {6, 1, 1123}	-- 棺木解锁图 第二重锁
CADAVER			= {6, 1, 1124}	-- 奇异死尸
LV120SKILLBOOK	= {6, 1, 1125}	-- 120级技能诀要

COFFIN_POSITION = {37, 1832, 3439, 6, 6}	-- 棺材所在位置{地图, X坐标, Y坐标, X误差, Y误差}

LV120SKILL_NEW_NPC =	-- 新建NPC列表
{	-- 格式 {NpcId, MapId, X, Y, Name, Script},
	{1203, 57, 1583, 3203, " ", "\\script\\task\\lv120skill\\npc\\衡山大厅_独孤剑的武林秘籍.lua"},
}

ORG_WULIMIJI	= {6, 1, 26}		-- 普通的武林秘籍
BANRUOXINJING	= {6, 1, 12}		-- 般若心经
XISUIJING		= {6, 1, 22}		-- 洗髓经
XINGHONGBAOSHI	= {4, 353, 1}		-- 猩红宝石
CRYSTAL =
{
	{4, 238, 1},		-- 蓝水晶
	{4, 239, 1},		-- 紫水晶
	{4, 240, 1},		-- 绿水晶
}
BLUE_C = 1
PURPLE_C = 2
GREEN_C = 3

LOCK_MAP1_KEY =			-- 第一重锁答案
{
	{1,  CRYSTAL[GREEN_C]},
	{3,  CRYSTAL[PURPLE_C]},
	{11, CRYSTAL[BLUE_C]},
	{14, CRYSTAL[BLUE_C]},
	{22, CRYSTAL[PURPLE_C]},
	{24, CRYSTAL[GREEN_C]},
}

LOCK_MAP2_KEY =			-- 第二重锁答案
{
	{2,  CRYSTAL[GREEN_C]},
	{6,  CRYSTAL[PURPLE_C]},
	{10, CRYSTAL[BLUE_C]},
	{15, CRYSTAL[BLUE_C]},
	{19, CRYSTAL[GREEN_C]},
	{23, CRYSTAL[PURPLE_C]},
}

FACTION_TEXT = 			-- 门派相关文本定义
{
	[0] = {"<link=image[0,14]:\\spr\\npcres\\enemy\\enemy037\\enemy037_pst.spr>", "Huy襫 nh﹏ phng trng", "Phng trng"},	-- 少林
	[1] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy084\\enemy084_pst.spr>", "Dng Anh", "Bang ch� "},		-- 天王
	[2] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy077\\enemy077_pst.spr>", "Л阯g C鮱", "Chng m玭"},		-- 唐门
	[3] = {"<link=image[0,12]:\\spr\\npcres\\enemy\\enemy091\\enemy091_pst.spr>", "H綾 Di謓 Lang Qu﹏", "Gi竜 ch�"},	-- 五毒
	[4] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy055\\enemy055_pst.spr>", "Thanh Hi觰 S� Th竔 ", "Chng m玭"},	-- 峨嵋
	[5] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy098\\enemy098_pst.spr>", "Do穘 H祄 Y猲", "Chng m玭"},		-- 翠烟
	[6] = {"<link=image[0,19]:\\spr\\npcres\\enemy\\enemy071\\enemy071_pst.spr>", "H� Nh﹏ Ng� ", "Bang ch� "},	-- 丐帮
	[7] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy103\\enemy103_pst.spr>", "Ho祅 Nhan Ho祅h Li謙", "Gi竜 ch�"},	-- 天忍
	[8] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy046\\enemy046_pst.spr>", "Чo Nh蕋 Ch﹏ Nh﹏", "Chng m玭"},	-- 武当
	[9] = {"<link=image[0,22]:\\spr\\npcres\\enemy\\enemy065\\enemy065_pst.spr>", "Tuy襫 C� T� ", "Chng m玭"},	-- 昆仑
}

FACTION_BOOK =			-- 门派技能书
{
	[0] = {{6, 1, 56}, {6, 1, 57}, {6, 1, 58}},				-- 少林
	[1] = {{6, 1, 37}, {6, 1, 38}, {6, 1, 39}},				-- 天王
	[2] = {{6, 1, 27}, {6, 1, 28}, {6, 1, 45}, {6, 1, 46}},	-- 唐门
	[3] = {{6, 1, 47}, {6, 1, 48}, {6, 1, 49}},				-- 五毒
	[4] = {{6, 1, 42}, {6, 1, 43}, {6, 1, 59}},				-- 峨嵋
	[5] = {{6, 1, 40}, {6, 1, 41}},							-- 翠烟
	[6] = {{6, 1, 54}, {6, 1, 55}},							-- 丐帮
	[7] = {{6, 1, 35}, {6, 1, 36}, {6, 1, 53}},				-- 天忍
	[8] = {{6, 1, 33}, {6, 1, 34}},							-- 武当
	[9] = {{6, 1, 50}, {6, 1, 51}, {6, 1, 52}},				-- 昆仑
	[10] = {{6, 1, 4062}, {6, 1, 4063}},                    -- Hoa S琻 
}

DIALOG_UI_TEXT =			-- 对话UI显示
{
	{"<link=image[0,10]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr>", "чc C� Ki誱"},			-- 1 独孤剑
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby040\\passerby040s2.spr>", "Xa phu Bi謓 Kinh"},	-- 2 汴京车夫
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby072\\passerby072s1.spr>", "Gi?Th莕 To竛"},	-- 3 贾神算
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_wulin.spr>", "V� L﹎ M藅 T辌h"},						-- 4 不寻常的武林秘籍
	{"<link=image:\\spr\\Ui3\\120级技能任务\\bianjing_southeast.spr>", "B秐  n琲 ph竧 sinh s� vi謈 xa phu Bi謓 Kinh"},	-- 5 汴京东部事发点地图
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_coffin.spr>", "Quan t礽 th莕 b�"},					-- 6 神秘棺木
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_lockinfo.spr>", "B秐  gi秈 t醓 quan t礽"},				-- 7 棺木解锁图
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_corpse.spr>", "Cng Thi"},					-- 8 奇异死尸（运功前）
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_corpse1.spr>", "Cng Thi"},					-- 9 奇异死尸（运功后）
	{"<link=image:\\spr\\Ui3\\120级技能任务\\task_stunt.spr>", "K� n╪g c蕄 120"},				-- 10 120级技能决要
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-01.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},			-- 11-16 棺木解锁图一 碎片
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-02.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-03.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-04.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-05.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁1-06.spr>", "M秐h 1 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-01.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},			-- 17-22 棺木解锁图二 碎片
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-02.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-03.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-04.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-05.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},
	{"<link=image:\\spr\\Ui3\\120级技能任务\\机关锁2-06.spr>", "M秐h 2 b秐  gi秈 t醓 quan t礽"},
}

LV120SKILL_LIST =			-- 120级技能列表
{
	[0] = {709, 1, 0, 120, "K� n╪g c蕄 120", "Чi Th鮝 Nh� Lai Ch�"},	-- 少林
	[1] = {708, 1, 1, 120, "K� n╪g c蕄 120",	"Фo H� Thi猲"},		-- 天王
	[2] = {710, 1, 2, 120, "K� n╪g c蕄 120",	"M� 秐h Tung"},		-- 唐门
	[3] = {711, 1, 3, 120, "K� n╪g c蕄 120",	"H蕄 Tinh Y觤"},		-- 五毒
	[4] = {712, 1, 4, 120, "K� n╪g c蕄 120",	"B� Nguy謙 Ph蕋 Tr莕"},	-- 峨嵋
	[5] = {713, 1, 5, 120, "K� n╪g c蕄 120",	"Ng� Tuy誸 萵"},		-- 翠烟
	[6] = {714, 1, 6, 120, "K� n╪g c蕄 120",	"H鏽 Thi猲 Kh� C玭g"},	-- 丐帮
	[7] = {715, 1, 7, 120, "K� n╪g c蕄 120",	"Ma  Ph� Ph竎h"},	-- 天忍
	[8] = {716, 1, 8, 120, "K� n╪g c蕄 120",	"Xu蕋 � B蕋 Nhi詍"},	-- 武当
	[9] = {717, 1, 9, 120, "K� n╪g c蕄 120",	"Lng Nghi Ch﹏ Kh�"},	-- 昆仑
	[10] = {1365, 1, 10, 120, "K� n╪g c蕄 120",	"T� H� Ki誱 Kh�"},	-- Hoa S琻
}

g_DescTable = {}		-- 全局临时对话字符串数组

function init_lv120skill()					-- 初始化任务
	if (GetTask(LV120_SKILL_STATE) == 0) then
		SetTask(LV120_SKILL_STATE, 1)
	end
	SyncTaskValue(LV120_SKILL_STATE)
	SyncTaskValue(LV120_SKILL_ID);
	lv120skill_debug()	-- 自动处理异常
end

function describe_talk(tDialog, szCall)		-- 对话函数
	local i = 0
	if (getn(tDialog) == 0) then return end
	repeat
		i = i + 1
	until (g_DescTable[i] == nil)
	g_DescTable[i] = tDialog
	if (szCall == nil) then szCall = "" end
	describe_basic(1, i, szCall)	
end

function describe_basic(nSeq, idxTable, szCallback)		-- 对话递归函数（内部）
	local tDialog = g_DescTable[idxTable]
	if (nSeq == getn(tDialog)) then
		if (szCallback == "") then
			Describe(tDialog[nSeq], 1, "K誸 th骳 i tho筰/quit")
		else
			Describe(tDialog[nSeq], 1, "Ti誴 t鬰 i tho筰 /"..szCallback)
		end
		g_DescTable[idxTable] = nil
		return
	end
	Describe(tDialog[nSeq], 1, "Ti誴 t鬰 i tho筰 /#describe_basic("..(nSeq + 1)..", "..idxTable..", [["..szCallback.."]])")
end

function npc_string(nNpc, szDisplay, bFaction)			-- 获得NPC对玩家说话的字符串
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..tab[2].."<link>:"..szDisplay
end

function speak_string(nNpc, szDisplay, bFaction)		-- 获得玩家对NPC所说话的字符串
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..GetName().."<link>:"..szDisplay
end

function self_string(nNpc, szDisplay, bFaction)			-- 获得玩家自白字符串
	if (nNpc == 0) then		-- 0表示无图示
		return "<color=orange>"..szDisplay.."<color>"
	end
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1].."<link><color=orange>"..szDisplay.."<color>"
end

function add_lv120skillnpc()			-- 添加任务NPC
	for i = 1, getn(LV120SKILL_NEW_NPC) do
		local Tab = LV120SKILL_NEW_NPC[i]
		local idxMap = SubWorldID2Idx(Tab[2]);
		if (idxMap >= 0) then
			local idxNpc = AddNpc(Tab[1], 1, idxMap, Tab[3] * 32, Tab[4] * 32, 1, Tab[5])
			SetNpcScript(idxNpc, Tab[6])
		end
	end
end

function generate_sequence(tab)			-- 生成随机序列

	local nCount = getn(tab)
	local temp, nSeq, bAct = {}, 0, 0

	for i = 1, nCount do
		tinsert(temp, i)
		if (GetTask(tab[i]) < 1) or (GetTask(tab[i]) > getn(tab)) then bAct = 1 end	-- 如果有不合法编码则全部重建
	end

	if (bAct == 1) then
		for i = 1, nCount do
			nSeq = random(1, getn(temp))
			SetTask(tab[i], temp[nSeq])
			SyncTaskValue(tab[i])
			tremove(temp, nSeq)
		end
	end

end

function add_item(tab)							-- 添加道具
	return AddItem(tab[1], tab[2], tab[3], 1, 0, 0)
end

function display_clip(nLockMap, nSeq, szCall)	-- 显示一张碎片
	local nIndex = 10 + 6 * (nLockMap - 1) + GetTask(LOCK_MAP_SEQUENCE[nLockMap][nSeq])
	Describe(DIALOG_UI_TEXT[nIndex][1]..DIALOG_UI_TEXT[nIndex][2].."<link>", 2, "Tr� l筰/"..szCall, "сng/quit")
end

function lv120skill_report()					-- 向掌门报告情况
	local tDialog
	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	if (nFaction == 0) or (nFaction == 8) or (nFaction == 6) or (nFaction == 4) then	-- 正派
		tDialog =
		{
			npc_string(nFaction, "竔 ch�, th� ra ngi c騨g  bi誸 頲 c╪ c� c﹗ chuy謓 r錳! G莕 y giang h� t nhi猲 bi課 i, trong T鑞g qu鑓 t� u n cu鑙 u bao tr飉 m閠 m m﹜ u 竚, ta c騨g  nghi s韒 甶襲 n祔, nh璶g v� th﹏ l�"..szCall.."  kh玭g ti謓 t� ch鴆 甶襲 tra vi謈 n祔. Sau  m閠 s� v� 萵 s� giang h� c馻 b鎛 m玭 l莕 lt t竔 xu蕋 giang h�, ng蕀 ng莔 甶襲 tra s� vi謈 n祔. B鋘 h� ph竧 hi謓 manh m鑙 c祅g ng祔 c祅g l� r� h琻, c竎 manh m鑙 n祔 u ng蕀 ng莔 竚 ch� ch� m璾 l�: Thi猲 Nh蒼 Gi竜!", 1),
			speak_string(nFaction, "Xem ra ch﹏ tng  l� r� ho祅 to祅, ch th� y l� Thi猲 Nh蒼 ch� m璾! Ch� c� 甶襲 c竎 lo筰 ng v藅 ph竧 甶猲 v� c竎 v誸 nh tr猲 x竎 ch誸 ch璦 xu蕋 hi謓 tr猲 giang h� l莕 n祇, ngo礽 ra xu蕋 hi謓 r蕋 nhi襲 con d琲 d� thng, ph秈 ch╪g y l� lo筰 t� thu藅 m韎 c馻 Thi猲 Nh蒼?", 1),
			npc_string(nFaction, "в b秓 v� Чi T鑞g v� b秓 v� ch輓h ngh躠 ta  chu萵 b� i s竎h cho vi謈 n祔. Ta v� m閠 s� cao th� b� quan s竛g ch� ra m閠 chi猽 th鴆 tuy謙 h鋍 thng th鮝. Ngi th﹏ th� 1 m譶h m� t譵 ra 頲 m閠 u m鑙 r蕋 quan tr鋘g, th藅 ng khen thng. Nay ta quy誸 nh truy襫 ngi m鉵 v� c玭g thng th鮝 n祔, hi v鋘g sau n祔 ngi l蕐 nhi謒 v� c馻 thi猲 h� s� l� nhi謒 v� c馻 m譶h.", 1),
			speak_string(nFaction, " t� "..szCall.."Tu﹏ theo"..szCall.."gi竜 hu蕁.", 1),
			npc_string(nFaction, "Do th阨 gian g蕄 g竝, n猲 c玭g l鵦 c馻 m鉵 v� c玭g n祔 ch� truy襫 cho ngi m閠 ph莕, sau n祔 d鵤 v祇 c莕 c� si猲g n╪g c馻 ngi m� ph竧 tri觧 m鉵 v� c玭g n祔 l猲.  Chi猽 v� c玭g n祔 ch� truy襫 cho ngi, nh鱪g  t� v� c竎 m玭 ph竔 kh竎 v蒼 c遪 ch璦 頲 bi誸 u. в tr竛h tai v竎h m筩h d鮪g,  ta  vi誸 t蕋 c� nh鱪g kh萿 quy誸 c莕 thi誸 r錳, ngi t� nghi猲 c鴘 nh�. D璦 v祇 t� ch蕋 hi謓 t筰 c馻 ngi s� r蕋 d� d祅g l躰h ng�. � ng r錳,   ngi 甶 chu萵 b� <color=white> t蕋 c� k� n╪g c馻 b鎛 m玭 th祅h 1 quy觧<color>.", 1),
			speak_string(nFaction, "Nghe"..szCall.." d苙 d�,  t� li襫 t鴆 t鑓 n y ph鬰 m謓h.", 1),
		}
	elseif (nFaction == 2) or (nFaction == 1) or (nFaction == 5) then					-- 中立
		tDialog =
		{
			npc_string(nFaction, "竔 ch�, th� ra ngi c騨g  bi誸 頲 c╪ c� c﹗ chuy謓 r錳! G莕 y giang h� t nhi猲 bi課 i m閠 c竎h b蕋 thng, s� sinh t錸 c馻 b鎛 m玭 bao tr飉 m閠 m m﹜ u 竚, v蕁  n祔 ta c騨g  li謚 trc, nh璶g v� th﹏ l�"..szCall.."  kh玭g ti謓 t� ch鴆 甶襲 tra vi謈 n祔. Sau  m閠 s� v� 萵 s� giang h� c馻 b鎛 m玭 l莕 lt t竔 xu蕋 giang h�, ng蕀 ng莔 甶襲 tra s� vi謈 n祔. B鋘 h� ph竧 hi謓 manh m鑙 c祅g ng祔 c祅g l� r� h琻, c竎 manh m鑙 n祔 u ng蕀 ng莔 竚 ch� ch� m璾 l�: Thi猲 Nh蒼 Gi竜!", 1),
			speak_string(nFaction, "Xem ra ch﹏ tng  l� r� ho祅 to祅, ch th� y l� Thi猲 Nh蒼 ch� m璾! Ch� c� 甶襲 c竎 lo筰 ng v藅 ph竧 甶猲 v� c竎 v誸 nh tr猲 x竎 ch誸 ch璦 xu蕋 hi謓 tr猲 giang h� l莕 n祇, ngo礽 ra xu蕋 hi謓 r蕋 nhi襲 con d琲 d� thng, ph秈 ch╪g y l� lo筰 t� thu藅 m韎 c馻 Thi猲 Nh蒼?", 1),
			npc_string(nFaction, "в tr竛h Thi猲 Nh蒼 g﹜ b蕋 l頸 cho ta, ta  ti課 h祅h t輈h c鵦 ﹎ th莔 甶襲 tra. Ta v� m閠 s� cao th� b� quan s竛g ch� ra m閠 chi猽 th鴆 tuy謙 h鋍 thng th鮝. Ngi th﹏ th� 1 m譶h m� t譵 ra 頲 m閠 u m鑙 r蕋 quan tr鋘g, th藅 ng khen thng. Nay ta quy誸 nh truy襫 ngi m鉵 v� c玭g thng th鮝 n祔, hi v鋘g sau n祔 ngi gi髉 b鎛 m玭 vinh danh thi猲 h�.", 1),
			speak_string(nFaction, " t� "..szCall.."Tu﹏ theo"..szCall.."gi竜 hu蕁.", 1),
			npc_string(nFaction, "Do th阨 gian g蕄 g竝, n猲 c玭g l鵦 c馻 m鉵 v� c玭g n祔 ch� truy襫 cho ngi m閠 ph莕, sau n祔 d鵤 v祇 c莕 c� si猲g n╪g c馻 ngi m� ph竧 tri觧 m鉵 v� c玭g n祔 l猲.  Chi猽 v� c玭g n祔 ch� truy襫 cho ngi, nh鱪g  t� v� c竎 m玭 ph竔 kh竎 v蒼 c遪 ch璦 頲 bi誸 u. в tr竛h tai v竎h m筩h d鮪g,  ta  vi誸 t蕋 c� nh鱪g kh萿 quy誸 c莕 thi誸 r錳, ngi t� nghi猲 c鴘 nh�. D璦 v祇 t� ch蕋 hi謓 t筰 c馻 ngi s� r蕋 d� d祅g l躰h ng�. � ng r錳,   ngi 甶 chu萵 b� <color=white> t蕋 c� k� n╪g c馻 b鎛 m玭 th祅h 1 quy觧<color>.", 1),
			speak_string(nFaction, "Nghe"..szCall.." d苙 d�,  t� li襫 t鴆 t鑓 n y ph鬰 m謓h.", 1),
		}
	elseif (nFaction == 3) or (nFaction == 9) then										-- 邪派
		tDialog =
		{
			npc_string(nFaction, "竔 ch�, th� ra ngi c騨g  bi誸 頲 c╪ c� c﹗ chuy謓 r錳! G莕 y giang h� t nhi猲 bi課 i m閠 c竎h b蕋 thng, c� h閕  b鎛 m玭 vang danh l骳 th阨 lo筺 n祔,  nh璶g v� th﹏ l�"..szCall.."  kh玭g ti謓 t� ch鴆 甶襲 tra vi謈 n祔. Sau  m閠 s� v� 萵 s� giang h� c馻 b鎛 m玭 l莕 lt t竔 xu蕋 giang h�, ng蕀 ng莔 甶襲 tra s� vi謈 n祔. B鋘 h� ph竧 hi謓 manh m鑙 c祅g ng祔 c祅g l� r� h琻, c竎 manh m鑙 n祔 u ng蕀 ng莔 竚 ch� ch� m璾 l�: Thi猲 Nh蒼 Gi竜!", 1),
			speak_string(nFaction, "Xem ra ch﹏ tng  l� r� ho祅 to祅, ch th� y l� Thi猲 Nh蒼 ch� m璾! Ch� c� 甶襲 c竎 lo筰 ng v藅 ph竧 甶猲 v� c竎 v誸 nh tr猲 x竎 ch誸 ch璦 xu蕋 hi謓 tr猲 giang h� l莕 n祇, ngo礽 ra xu蕋 hi謓 r蕋 nhi襲 con d琲 d� thng, ph秈 ch╪g y l� lo筰 t� thu藅 m韎 c馻 Thi猲 Nh蒼?", 1),
			npc_string(nFaction, "B鎛 m玭 l� n祇 l筰 l� ngi n sau? V� v﹜ ta  ng蕀 ng莔 甶襲 tra, ng th阨 c� d� nh : kh玭g  cho Thi猲 Nh蒼 g﹜ b蕋 l頸 v韎 ta, l頸 d鬾g th阨 th� h鏽 lo筺 n鎖 danh thi猲 h�, v� l祄 anh h飊g th阨 lo筺, ha ha ha. Ta v� m閠 s� cao th� b� quan s竛g ch� ra m閠 chi猽 th鴆 tuy謙 h鋍 thng th鮝. Ngi n thng c m� m� 甶襲 tra 頲 ng鋘 ngh祅h nh� v藋, r蕋 ng khen"..szCall.."N╩  r蕋 nhi襲 anh h飊g gan d� m韎 c� th� m 琻g, nh璶g ngi ch� m閠 th﹏ m閠 m譶h 甶襲 tra 頲 manh m鑙 quan tr鋘g nh� v箉, th藅 ng khen thng. Ta quy誸 nh truy襫 m鉵 v� c玭g tuy謙 h鋍 l筰 cho ngi, sau n祔 gi髉 ta vang danh thi猲 h� nh�.", 1),
			speak_string(nFaction, " t� "..szCall.."Tu﹏ theo"..szCall.."gi竜 hu蕁.", 1),
			npc_string(nFaction, "Do th阨 gian g蕄 g竝, n猲 c玭g l鵦 c馻 m鉵 v� c玭g n祔 ch� truy襫 cho ngi m閠 ph莕, sau n祔 d鵤 v祇 c莕 c� si猲g n╪g c馻 ngi m� ph竧 tri觧 m鉵 v� c玭g n祔 l猲.  Chi猽 v� c玭g n祔 ch� truy襫 cho ngi, nh鱪g  t� v� c竎 m玭 ph竔 kh竎 v蒼 c遪 ch璦 頲 bi誸 u. в tr竛h tai v竎h m筩h d鮪g,  ta  vi誸 t蕋 c� nh鱪g kh萿 quy誸 c莕 thi誸 r錳, ngi t� nghi猲 c鴘 nh�. D璦 v祇 t� ch蕋 hi謓 t筰 c馻 ngi s� r蕋 d� d祅g l躰h ng�. � ng r錳,   ngi 甶 chu萵 b� <color=white> t蕋 c� k� n╪g c馻 b鎛 m玭 th祅h 1 quy觧<color>.", 1),
			speak_string(nFaction, "Nghe"..szCall.." d苙 d�,  t� li襫 t鴆 t鑓 n y ph鬰 m謓h.", 1),
		}
	elseif (nFaction == 7) then															-- 天忍
		tDialog =
		{
			npc_string(nFaction, "Th藅 kh玭g h� danh  t� c馻 Thi猲 Nh蒼 Gi竜, kh玭g c� c竔 g� qua 頲 m総 ngi! Th阨 gian g莕 y giang h� b鏽g nhi猲 i lo筺, th藅 kh玭g ngh� t韎  y l� nh鱪g h祅h vi n祔 c馻 Thi猲 Nh蒼 Gi竜 ta g﹜ ra, ha ha. Ngi  畂竛 頲 th� ta c騨g kh玭g gi蕌 ngi l祄 g�.  G莕 y Thi猲 Nh蒼 Gi竜  l玦 k衞 kh玭g 輙 v� l﹎ cao th�  萵 danh, luy謓 th祅h 1 thu藅 ﹎ t� c鵦 m筺h.  Nh鱪g ng v藅 ph竧 cu錸g v� nh鱪g thi th� d� thng n籱 trong q uan t礽 l� th祅h qu� c馻 ta, v� c騨g t� r� i Kim qu鑓 c馻 ch髇g ta s� ti課 h祅h m閠 cu閏 chinh ph箃.", 1),
			speak_string(nFaction, "Gi竜 ch� anh minh, ta s� v� i nghi謕 c馻 kim qu鑓 t薾 t﹎ t薾 l鵦 th鑞g nh蕋 thi猲 h�.", 1),
			npc_string(nFaction, "L莕 ho箃 ng n祔 v� c飊g k輓 o, tin t鴆 n祔 c騨g kh玭g lan truy襫 trong m玭 ph竔, c� ngi v鮝 m韎 h� l� th玭g tin li襫 t鴆 th� ch誸 lu玭. Nh鱪g x竎 ch誸  l� nh鱪g gi竛 甶謕 ph竔 t� T鑞g qu鑓, v鮝 v苙  ta d飊g l祄 v藅 th� nghi謒. Ta l祄 c萵 th薾 nh� v藋 nh璶g c騨g kh玭g ch� ngi v筩h tr莕 s� vi謈, may m� ngi l� ngi c馻 b鎛 m玭. Nh璶g m� ngi h鱱 d騨g h鱱 m璾 gan d� h琻 ngi c� th� giao 頲 nhi謒 v� l韓, ha ha. Nay ta truy襫 cho ngi m鉵 tuy謙 h鋍 n祔, v� ng n猲 ph� s� t輓 nhi謒 c馻 Kim Qu鑓!", 1),
			speak_string(nFaction, " t� "..szCall.."Tu﹏ theo"..szCall.."gi竜 hu蕁.", 1),
			npc_string(nFaction, "Do th阨 gian g蕄 g竝, n猲 c玭g l鵦 c馻 m鉵 v� c玭g n祔 ch� truy襫 cho ngi m閠 ph莕, sau n祔 d鵤 v祇 c莕 c� si猲g n╪g c馻 ngi m� ph竧 tri觧 m鉵 v� c玭g n祔 l猲.  Chi猽 v� c玭g n祔 ch� truy襫 cho ngi, nh鱪g  t� v� c竎 m玭 ph竔 kh竎 v蒼 c遪 ch璦 頲 bi誸 u. в tr竛h tai v竎h m筩h d鮪g,  ta  vi誸 t蕋 c� nh鱪g kh萿 quy誸 c莕 thi誸 r錳, ngi t� nghi猲 c鴘 nh�. D璦 v祇 t� ch蕋 hi謓 t筰 c馻 ngi s� r蕋 d� d祅g l躰h ng�. � ng r錳,   ngi 甶 chu萵 b� <color=white> t蕋 c� k� n╪g c馻 b鎛 m玭 th祅h 1 quy觧<color>.", 1),
			speak_string(nFaction, "Nghe"..szCall.." d苙 d�,  t� li襫 t鴆 t鑓 n y ph鬰 m謓h.", 1),
		}
	end
	describe_talk(tDialog)
	SetTask(LV120_SKILL_STATE, 18)
	SyncTaskValue(LV120_SKILL_STATE)
end

function lv120skill_submit()				-- 提交本派全部技能书UI
	GiveItemUI("Giao to祅 b� s竎h k� n╪g c馻 b鎛 m玭", "B� t蕋 c� s竎h k� n╪g c馻 b鎛 m玭 v祇 th� thu 頲 b� quy誸 k� n╪g c蕄 120.", "submit_skillbook", "quit")
end

function submit_skillbook(nCount)			-- 提交本派全部技能书

	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	local idxBook, g, d, p = 0, 0, 0, 0
	local book, temp = {}, {}

	if (nCount == 0) then
		lv120skill_submit()
		return
	end

	for i = 1, getn(FACTION_BOOK[nFaction]) do
		tinsert(temp, FACTION_BOOK[nFaction][i])
	end

	for i = 1, nCount do
		idxBook = GetGiveItemUnit(i)
		g, d, p = GetItemProp(idxBook)
		for j = 1, getn(temp) do
			if (g == temp[j][1]) and (d == temp[j][2]) and (p == temp[j][3]) then
				tremove(temp, j)
				tinsert(book, idxBook)
				break
			end
		end
	end

	if (getn(temp) == 0) then
		local tDialog =
		{
			npc_string(nFaction, "Th藅 kh玭g h� danh nh﹏ t礽 kh� g苝, h祅h s� th藅 l� lanh l褏..  Ta  a cho ngi b� quy誸 r錳 ngi t� 甶 nghi猲 c鴘 1 l骳 l� c� th� l躰h ng� 1 trong s� tuy謙 chi猽.", 1),
			speak_string(nFaction, " t� "..szCall.."C竚 琻  ch� d箉, b﹜ gi� ta 甶 tu luy謓 y.", 1),
			self_string(10, "Sau m閠 h錳 quanh co, i hi謕  t 頲 m閠 tuy謙 k� thng th鮝 trong v� l﹎厖"),
		}
		describe_talk(tDialog)
		for i = 1, getn(book) do
			if (RemoveItemByIndex(book[i]) ~= 1) then		-- 取走玩家身上的技能书
				WriteLog("Nhi謒 v� k� n╪g c蕄 120 - G鰅 cho b鎛 m玭 ph竔 t蕋 c� s竎h k� n╪g -- X鉧 b� c竎 s竎h k� n╪g d� thng.  Player ="..GetName().." Time = "..date("%y.%m.%d"))
				Msg2Player("H� th鑞g ph竧 sinh l鏸, xin m阨 li猲 h� v韎 nh� ph竧 h祅h  gi秈 quy誸 v蕁  n祔!")
				return
			end
		end
		idxBook = add_item(LV120SKILLBOOK)	-- 获得120级技能书
		Msg2Player("Ngi thu 頲 1"..GetItemName(idxBook))
		SetTask(LV120_SKILL_STATE, 19)
		SyncTaskValue(LV120_SKILL_STATE)
	else
		Describe("C莕 ph秈 b� v祇 1 cu鑞 c� t蕋 c� k� n╪g,  cho"..szCall.."  l祄 th祅h s竎h tuy謙 k� thng th鮝 c蕄 120.", 2, "L祄 l筰/lv120skill_submit", "сng/quit")
	end

end

function calc_item(tab)
	return	CalcItemCount(-1, tab[1], tab[2], tab[3], -1)
end

-- 解决任务异常
function lv120skill_debug()
	local state = GetTask(LV120_SKILL_STATE)
	if (state <= 1) or (state >= 19) then return end
	if (state == 5) then debug_item(DGJ_WULINMIJI) return end
	if (state == 9) then debug_item(COFFIN_MAP) return end
	if (state >= 10) and (state <= 15) then debug_item(COFFIN) return end
	if (state == 16) then debug_item(CADAVER) return end
end

function debug_item(Item)
	if (calc_item(Item) < 1) then
		if (CalcFreeItemCellCount() < 1) then
			Msg2Player("Trong nhi謒 v� k� n╪g c蕄 120 xu蕋 hi謓 l鏸, xin m阨 d鋘 d裵 l筰 h祅h trang, xu蕋 hi謓 m閠 � tr鑞g ng th阨 xin m阨 ng nh藀 tr� l筰  h� th鑞g tr� l筰   m蕋 cho i hi謕.")
			return
		end
		local idxItem = add_item(Item)
		Msg2Player("Чi hi謕  thu 頲  v鮝 m阨 b� m蕋"..GetItemName(idxItem)..", b﹜ gi� c� th� ti誴 t鬰 nhi謒 v� k� n╪g 120.")
	end
end

function quit()
end


-- 120级技能书兑换
function lvl120skill_learn()
	Describe("C� 甶襲 g� nan gi秈 kh玭g?",4,
		"Ta mu鑞 i s竎h k� n╪g c蕄 120/lvl120skill_getbook",
		"L祄 sao  h鋍 頲 k� n╪g c蕄 120/lvl120skill_learninfo",
		"C竎h luy謓 k� n╪g c蕄 120/lvl120skill_skillinfo",
		"в ta suy ngh� k� l筰 xem/no");
end;

function lvl120skill_skillinfo()
	local szInfo = format("%s%s%s%s%s%s%s%s%s%s",
			"<enter><color=green>1. Цnh qu竔 nh薾 頲 <color>",
			"<enter>Qu竔 t筰 c竎 khu v鵦 luy謓 c蕄: nh qu竔 thng, boss xanh, boss Ho祅g Kim;",
			"<enter>Qu竔 trong ho箃 ng: nh qu竔 trong c竎 ho箃 ng 'Vt 秈 th� nh蕋', 'Boss s竧 th�';",
			"<enter>Qu竔 trong nhi謒 v�: nh qu竔 trong c竎 nhi謒 v� Ho祅g Kim;",
			"<enter>Chi課 trng T鑞g Kim: s� d鬾g 甶觤 t輈h l騳  i 甶觤 kinh nghi謒, tuy nhi猲 kh玭g th� vt qua gi韎 h筺 qui nh m鏸 ng祔.", 
			"<enter><color=green>2. Ch鴆 n╪g 駓 th竎<color>",
			"<enter>S� d鬾g B筩h C﹗ Ho祅 k� n╪g, Чi B筩h C﹗ Ho祅 k� n╪g, Чi B筩h C﹗ Ho祅 k� n╪g c bi謙.",
			"<enter>B筩h C﹗ Ho祅 k� n╪g: sau khi s� d鬾g s� n﹏g cao  r蘮 luy謓 k� n╪g 120, m鏸 5 ph髏 th�  r蘮 luy謓 s� t╪g m閠 l莕;",
			"<enter>Чi B筩h C﹗ Ho祅 k� n╪g: hi謚 qu� g蕄 ri B筩h C﹗ Ho祅 k� n╪g thng, m鏸 5 ph髏 th�  r蘮 luy謓 s� t╪g m閠 l莕;",
			"<enter>Чi B筩h C﹗ ho祅 k� n╪g c bi謙: hi謚 qu� g蕄 i B筩h C﹗ Ho祅 k� n╪g thng, m鏸 5 ph髏 th�  r蘮 luy謓 s� t╪g m閠 l莕;"
			);
	Describe(szInfo,
		2,
		"Tr� v�/lvl120skill_learn",
		"K誸 th骳 i tho筰/no")
end;

function lvl120skill_learninfo()
	Describe("Nh鱪g cao th� t c蕄 120 c� th� n m玭 ph竔 c馻 m譶h  i s竎h k� n╪g c蕄 120. Sau khi s� d鬾g s竎h s� h鋍 頲 k� n╪g c蕄 120, m鏸 nh﹏ v藅 ch� c� th� i m閠 l莕. <enter>в i l蕐 s竎h c莕 ph秈 thu th藀 : 1 quy觧 B祅 Nhc T﹎ Kinh, 1 b� s竎h k� n╪g 90 c馻 m玭 ph竔 m譶h, 1 vi猲 Tinh H錸g B秓 Th筩h v� 1 vi猲 Th駓 Tinh.", 
		2,
		"Tr� v�/lvl120skill_learn",
		"K誸 th骳 i tho筰/no")
end;

function lvl120skill_getbook()
	-- 原任务进行到19结束，保持原值，兑换技能书成功，直接设为19
	local nstate = GetTask(LV120_SKILL_STATE);
	local nlevel = GetLevel();
	local nfact = GetLastFactionNumber();
	if (nstate == 19) then
		Describe("Th藅 ng ti誧, ngi  i s竎h k� n╪g 120 r錳.",1 , "K誸 th骳 i tho筰/no");
	elseif (nlevel < 120) then
		Describe("Ъng c蕄 ch璦  120, kh玭g  甶襲 ki謓 i s竎h.",1 , "K誸 th骳 i tho筰/no");
	elseif (nfact < 0 or nfact > 9) then
		Describe("Ngi ch璦 gia nh藀 m玭 ph竔, kh玭g  甶襲 ki謓 i s竎h.",1 , "K誸 th骳 i tho筰/no");
	else
		if (lvl120skill_delallitem() == 1) then
			SetTask(LV120_SKILL_STATE, 19);
			add_item(LV120SKILLBOOK);
			Msg2Player("фi s竎h k� n╪g c蕄 120 th祅h c玭g!")
			WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tget a lvl120skillbook",
				GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount()))
		else
			Describe("Th藅 ng ti誧, v藅 ph萴 mang n kh玭g ng y猽 c莡, h穣 ki觤 tra l筰!", 1,"K誸 th骳 i tho筰/no");
			Msg2Player("V藅 ph萴 c莕 thu th藀: 1 quy觧 B祅 Nhc T﹎ Kinh, 1 b� s竎h k� n╪g 90 c馻 m玭 ph竔 m譶h, 1 vi猲 Tinh H錸g B秓 Th筩h v� 1 vi猲 Th駓 Tinh.");
		end;
	end;
end;
-- 120级技能书兑换

function lvl120skill_delallitem()
	if (lvl120skill_calccount(BANRUOXINJING) < 1) then
		return 0;
	end;
	local nfact = GetLastFactionNumber();
	for i = 1, getn(FACTION_BOOK[nfact]) do
		if (lvl120skill_calccount(FACTION_BOOK[nfact][i]) < 1) then
			return 0;
		end;
	end;

	if (lvl120skill_calccount(XINGHONGBAOSHI) < 1) then
		return 0;
	end;
	
	if (lvl120skill_calccrystal() < 1) then
		return 0;
	end;
	
	lvl120skill_delitem(BANRUOXINJING, 1);
	for i = 1, getn(FACTION_BOOK[nfact]) do
		lvl120skill_delitem(FACTION_BOOK[nfact][i], 1);
	end;
	lvl120skill_delitem(XINGHONGBAOSHI, 1);
	lvl120skill_delscrystal(1);
	return 1;
end;

function lvl120skill_calccount(tb_item)
	return CalcEquiproomItemCount(tb_item[1], tb_item[2], tb_item[3], -1);
end;
function lvl120skill_delitem(tb_item, ncount)
	if (ncount <= 0) then
		return 0;
	end;
	local np = ConsumeEquiproomItem(ncount, tb_item[1], tb_item[2], tb_item[3], -1);
	if (np == 1) then
		WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tDeleteItem Count=%d,G=%d,D=%d,P=%d,L=%d",
					GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(),
					ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	else
		print(format("Error!!!! DeleteItem Fail!!! Count=%d,G=%d,D=%d,P=%d,L=%d",
				ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	end;
end;
function lvl120skill_calccrystal()
	local nsum = 0;
	for i = 1, getn(CRYSTAL) do
		nsum = nsum + lvl120skill_calccount(CRYSTAL[i]);
	end;
	return nsum;
end;
function lvl120skill_delscrystal(ncount)
	for i = 1, getn(CRYSTAL) do
		local ncrst = lvl120skill_calccount(CRYSTAL[i]);
		if (ncrst > ncount) then
			ncrst = ncount;
		end;
		lvl120skill_delitem(CRYSTAL[i], ncrst);
		ncount = ncount - ncrst;
		if (ncount <= 0) then
			break
		end;
	end;
end;



-- //越南版不处理上线时任务变量初始化
if (GetProductRegion() ~= "vn") then
	login_add(init_lv120skill, 2)
end
