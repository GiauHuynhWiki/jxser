Include([[\script\item\vnchristmas2006\xmas_head.lua]])

function main(nItemIdx)
	local nDate = tonumber(GetLocalDate("%Y%m%d%H"));
	if (nDate >= 2009012024) then
		Say("Th�i ti�t n�ng b�c, ng��i tuy�t �� b� tan th�nh n��c.", 0);
		return 0;
	end;
	
	local nG, nD, nP = GetItemProp(nItemIdx);
	if (not TB_SNOWMAN_ID[nP]) then
		return 1;
	end;
	dostring(TB_SNOWMAN_ID[nP].."()");
end;

function GetDesc(nItemIdx)
	local szDesc = "\nTh�i h�n s� d�ng<color=blue>24 gi� ng�y 20 th�ng 1 n�m 2009<color>"
	return szDesc;
end