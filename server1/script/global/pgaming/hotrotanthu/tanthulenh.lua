--- a top by Nam Cung Nhat Thien---

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\bonusvlmc\\fucmain.lua")
Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\event\\mid_autumn\\autumn_portal.lua")
Include("\\script\\event\\tongwar\\head.lua")
Include("\\script\\task\\system\\task_string.lua")
Include([[\script\missions\chrismas\ch_head.lua]]);--
Include([[\script\event\springfestival07\head.lua]]);
Include( "\\script\\event\\wulinling\\wulinling.lua" )
Include( "\\script\\event\\nanfangjiefangri\\event.lua" )
Include("\\script\\event\\tongwar\\head.lua");
Include("\\script\\vng_event\\vip_account_2011\\npc\\volamtruyennhan.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\duatop.lua")
Include("\\script\\global\\路人_武林盟传人.lua")
function main()
		dofile("script/global/namcung/tanthulenh.lua");	
local szTitle =  "<npc>Ch祇 m鮪g b筺 n v韎 th� gi韎<color=red> V� L﹎ Truy襫 K� <color>.<enter>Hoan ngh猲h c竎 anh h飊g h祇 ki謙  n v韎 <color=green>PGaming<color>...<enter>B鎛 trang mu鑞 mang n cho c竎 b筺 m閠 s﹏ ch琲 l祅h m筺h v� 鎛 nh l﹗ d礽...!<enter>M鋓 chi ti誸 th綾 m綾 xin c竎 nh﹏ s� ng g鉷 t筰 <color=red>Https://www.youtube.com/c/pgaminggameoffline<color>.<enter>Ch骳 c竎 nh﹏ s� b玭 t萿 giang h� vui v� t筰 <color=green>Th� Gi韎 秓<color>. Xin ch﹏ th祅h c秏 琻 qu� nh﹏ s�... !"
		local tbOpt =
	{
		{"Nh薾 l� bao T﹏ th�", lebao},	
		{"Nh薾 thng theo c蕄 ", top10all},
		{"Nh薾 thng t輈h luy gi� choi Online",tichluy},
		--{"L祄 nhi猰 v� m鏸 ng祔", nhiemvu},
		{"Tho竧"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function lebao()
dofile("script/global/namcung/tanthulenh.lua");	
		if GetTask(3010) == 1 then
			Talk(1, "", "Ngi  nh薾 ph莕 thng n祔 r錳 c� m� !");
			return
		end
		local tbAwardItem = {szName = "L� Bao T﹏ Th�", tbProp = {6, 1, 4258, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh薾 頲 1 l� bao t﹏ th�!");
		SetTask(3010,1)
end
function top10all()
	duatop()
end

function tichluy()
local szTitle =  "<npc>Ch祇 m鮪g b筺 n v韎 th� gi韎<color=red> V� L﹎ Truy襫 K� <color>.<enter>Hoan ngh猲h c竎 anh h飊g h祇 ki謙  n v韎 <color=green>Nam Cung Nh蕋 Thi猲<color>...<enter>B鎛 trang mu鑞 mang n cho c竎 b筺 m閠 s﹏ ch琲 l祅h m筺h v� 鎛 nh l﹗ d礽...!<enter>M鋓 chi ti誸 th綾 m綾 xin c竎 nh﹏ s� ng g鉷 t筰 <color=red>Https://www.facebook.com/nhatthienpro<color>.<enter>Ch骳 c竎 nh﹏ s� b玭 t萿 giang h� vui v� t筰 <color=green>K� 鴆 V� L﹎<color>. Xin ch﹏ th祅h c秏 琻 qu� nh﹏ s�... !"
		local tbOpt =
	{
		{"Nh薾 thng ph骳 duy猲", phucduyen},	
		{"Nh薾  thng danh v鋘g", danhvong},
		{"Nh薾 thng ti猲 th秓 l�",tienthaolo},
		{"Tho竧"},
	}
		CreateNewSayEx(szTitle, tbOpt)					
end

function phucduyen()
OnGain_Self()	
end
function danhvong()
W33_prise()		
end
function tienthaolo()
if (GetGameTime()  >= 7200) then

		local tbAwardItem ={szName = "Ti猲 th秓 l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Ti猲 th秓 l�");

else

	Say("襲 ki謓 c馻 ngi hi謓 nay kh玭g   nh薾 Ti猲 th秓 l�. H穣 luy謓 t藀 th猰 !",0)

end

end

function nhiemvu()
VLMC_main()		
end	

