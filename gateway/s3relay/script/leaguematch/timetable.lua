--日程安排
_tmp_calender = {
	weekend = {	--周末日程，在周五、六、日采用
		--开始时间（分钟），比赛场数
		{18*60, 4},	--第一段
		{21*60, 4},	--第二段
	},
	common = {	--一般日程，在没有特别安排时采用
		--开始时间（分钟），比赛场数
		{18*60, 4},
		{21*60, 4},	--第二段
	}
}

--赛季安排
-- 类型：1、双人；2、门派；3、师徒；4、三人；5、混合单人；6、同系双人；7、混合双人
WLLS_SEASON_TB = {
	--[ID]={类型, 	开始日期,	结束日期,	参赛次数,	日程安排}
	[0] = {2,		0,			0,			0,			{}},	--空赛季，极端情况保护
	--[ID]={the loai(1=>7), 	ngay bat dau,	ngay ket thuc,	so tran toi da,	the lich}
	-- 1=   Song u t? do
	-- 2=  n u m玭 ph竔
	-- 3=  song u s? 
	-- 4=  tam u t? do
	-- 5= n u t? do
	-- 6= song u c飊g h? = sau nay bi loai bo
	-- 7= song u nam n? = sau nay bi loai bo
	-- n╩ 2014
	[40] = {2,		180108,		180128,		48,		_tmp_calender},
	[41] = {5,		180208,		180228,		48,		_tmp_calender},
	[42] = {5,		180308,		180328,		48,		_tmp_calender},
	[43] = {5,		180408,		180428,		48,		_tmp_calender},
	[44] = {5,		180508,		180528,		48,		_tmp_calender},
	[45] = {5,		180608,		180628,		48,		_tmp_calender},
	[46] = {5,		180708,		180728,		48,		_tmp_calender},
	[47] = {5,		180808,		180828,		48,		_tmp_calender},
	[48] = {5,		180908,		180928,		48,		_tmp_calender},
	[49] = {5,		181008,		181028,		48,		_tmp_calender},
	[50] = {5,		181108,		181128,		48,		_tmp_calender},
	[51] = {5,		181208,		181228,		48,		_tmp_calender},
	
	--n╩ 2015
	[52] = {5,		190108,		190128,		48,		_tmp_calender},
	[53] = {5,		190208,		190228,		48,		_tmp_calender},
	[54] = {5,		190308,		190328,		48,		_tmp_calender},
	[55] = {5,		190408,		190428,		48,		_tmp_calender},
	[56] = {5,		190508,		190528,		48,		_tmp_calender},
	[57] = {5,		190608,		190628,		48,		_tmp_calender},
	[58] = {5,		190708,		190728,		48,		_tmp_calender},
	[59] = {5,		190808,		190828,		48,		_tmp_calender},
	[60] = {5,		190908,		190928,		48,		_tmp_calender},
	[61] = {5,		191008,		191028,		48,		_tmp_calender},
	[62] = {5,		191108,		191128,		48,		_tmp_calender},
	[63] = {5,		191208,		191228,		48,		_tmp_calender},
	
	-- Update l辌h cho n╩ 2012 - modified By DinhHQ -2120109
	[64] = {5,		200108,		200128,		48,		_tmp_calender},
	[65] = {5,		200208,		200228,		48,		_tmp_calender},
	[66] = {5,		200308,		200328,		48,		_tmp_calender},
	[67] = {5,		200408,		200428,		48,		_tmp_calender},
	[68] = {5,		200508,		200528,		48,		_tmp_calender},
	[69] = {5,		200608,		200628,		48,		_tmp_calender},
	[70] = {5,		200708,		200728,		48,		_tmp_calender},
	[71] = {5,		200808,		200828,		48,		_tmp_calender},
	[72] = {5,		200908,		200928,		48,		_tmp_calender},
	[73] = {5,		201008,		201028,		48,		_tmp_calender},
	[74] = {5,		201108,		201128,		48,		_tmp_calender},
	[75] = {5,		201208,		201228,		48,		_tmp_calender},
}

--结尾两个空赛季避免极端情况
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999998,	999998,	0,	_tmp_calender}
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999999,	999999,	0,	_tmp_calender}

