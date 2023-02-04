Include("\\script\\event\\shengdan_jieri\\200911\\plant.lua")

TIME_START	= 1800		-- 活动时间从18:00开始
TIME_END	= 2300		-- 活动时间在23:00结束
DATE_START	= 091216	-- 活动开始日期
DATE_END	= 200125	-- 活动结束日期

function main()
	local CurrentDate = tonumber(GetLocalDate("%y%m%d"))
	local CurrentTime = tonumber(GetLocalDate("%H%M"))
	if (CurrentDate < DATE_START) then
		Msg2Player("Ho箃 ng trang tr� c﹜ gi竛g sinh v蒼 ch璦 b総 u m�.")
		return 1
	elseif (CurrentDate >= DATE_END) then
		Msg2Player("Ho箃 ng trang tr� c﹜ gi竛g sinh  k誸 th骳.")
		return 1
	elseif (CurrentTime < TIME_START or CurrentTime >= TIME_END) then
		Msg2Player("Ho箃 ng trang tr� c﹜ gi竛g sinh di詎 ra v祇 m鏸 ng祔 t� 18:00 n 23:00.")
		return 1
	elseif (CheckCondition() == 0 or PlantTree() == 0) then
		return 1
	else
		return 0
	end
end

