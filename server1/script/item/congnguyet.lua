-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  c�ng th�ng ph� dung 
-- script viet hoa By http://tranhba.com  t�c d�ng # trung cu�i thu c�p b�nh Trung thu m�t trong , t�c d�ng c�ng T�y T�y Kinh , 80 c�p tr� l�n nh� ch�i s� d�ng , gia t�ng 5 �i�m ti�m n�ng �i�m . 
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # t�p t� ��t ���c v�t n�y ph�m c�n thi�t ��ch t�t c� m�t ch� ��c nh�t . 
-- script viet hoa By http://tranhba.com  h�n ch� n�i r� # n�n v�t ph�m y�u c�u nh�n v�t c�p b�c 80 c�p l�c s� d�ng h�u hi�u , m�i ng��i nhi�u nh�t s� d�ng 3 l�n . 
-- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng 701 th�p 4 v� b�y t� s� d�ng n�n v�t ph�m ��ch s� l�n 



function main(sel) 
times = GetTask(701) 
str ={ 
 "<#> B�n c�n th� m�t mi�ng nh�ng kh�ng c� t�c d�ng!", 
"<#> B�nh ngon h�o h�ng �� gi�p b�n t�ng c��ng kinh m�ch. N�i c�ng th�m h�u. Xin ch�c m�ng! ", 
"<#> M�i ng��i ch� �n ���c 3 c�i b�nh n�y ng��i ��ng tham lam qu�! " 
}
level = GetLevel() 
if(level < 80) then -- script viet hoa By http://tranhba.com  c�p b�c qu� th�p , kh�ng �� cho s� d�ng 
Msg2Player(str[1]) 
return 1 
end 
if(times > 2) then -- script viet hoa By http://tranhba.com  s� d�ng v��t qua s� l�n 
Msg2Player(str[3]) 
return 1 
end 
AddProp(5) -- script viet hoa By http://tranhba.com  ti�m n�ng �i�m gia t�ng 5 �i�m 
time=date("%m%d%H%M%S") 
name=GetName() 
WriteLog("Nh� ch�i "..name.." � "..time.." �n h�t m�t c�ng th�ng ph� dung b�nh Trung thu ") 
	SetTask(701,times+1)
Msg2Player(str[2]) 
return 0 
end
