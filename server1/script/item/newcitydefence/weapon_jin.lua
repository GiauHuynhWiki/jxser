
function add479()
		level = random(10,20);
		AddSkillState(479, level, 0, 1080 )	--������������˺�
		Msg2Player("<#> B�n nh�n ���c <color=0xB5FDD7> s�t th��ng v�t l� n�i c�ng trong 1 ph�t t�ng:"..(level*10).."<#> �i�m")	
end

function add487()
		level = random(5,10);
		AddSkillState(487, level, 0, 1080 )	--������������˺��ٷֱ�
		Msg2Player("<#> B�n nh�n ���c <color=0xB5FDD7> s�t th��ng v�t l� ngo�i c�ng trong 1 ph�t t�ng "..(level*10).."<#> %")	
end

Tab={add479,add487}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
	if( IsMyItem( nItemIndex ) ) then
		i = random(getn(Tab))
		Tab[i]();
		return 0;	-- ɾ����Ʒ
	end
end

