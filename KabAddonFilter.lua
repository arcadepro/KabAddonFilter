local f=CreateFrame("frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent",function(self,event,login,reload)
    local player=UnitName("player")
    if (login or reload) and player and player~="" then
        for i=1,GetNumAddOns() do
            if GetAddOnEnableState(player,i)>0 then
                EnableAddOn(i,player)
            else
                DisableAddOn(i,player)
            end
        end
    end
end)