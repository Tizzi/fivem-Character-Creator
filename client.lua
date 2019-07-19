ESX = nil
clotheshop = false
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5)
	end
end)
function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
function reloadMenuFreeMode()
	submenuAppearance.SubMenu:Clear()
	submenuClothes.SubMenu:Clear()
	AddMenuAppearance(submenuAppearance)
	AddMenuClothes(submenuClothes)
end
RegisterNetEvent('mpcreator:OpenMenu')
AddEventHandler('mpcreator:OpenMenu',function()
	local morf = math.random(1,2)
	if morf == 1 then changemodel("mp_m_freemode_01") end
	if morf == 2 then changemodel("mp_f_freemode_01") end
	SetPedRandomComponentVariation(GetPlayerPed(-1), true)
	mainMenu:Visible(not mainMenu:Visible())
end)
RegisterNetEvent('mpcreator:OpenClothesMenu')
AddEventHandler('mpcreator:OpenClothesMenu',function()
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jailSkin)
		Character = skin
		TriggerEvent('skinchanger:loadSkin', skin)
	end)
	clotheshop = true
	reloadMenuOtherPed()
	otherPedMenu:Visible(true)
end)
function reloadMenuOtherPed()
	otherPedMenu:Clear()
	AddMenuClothes(otherPedMenu)
end
function changemodel(skin)
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
		LoadDefaultComponents()
        SetPlayerModel(PlayerId(), model)
        if skin ~= "mp_f_freemode_01" and skin ~= "mp_m_freemode_01" then 
            SetPedRandomComponentVariation(GetPlayerPed(-1), true)
			
        elseif skin == "mp_m_freemode_01" then
			Character['sex'] = 0
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 11, 146, 0, 2)
            SetPedComponentVariation(GetPlayerPed(-1), 4, 3, 7, 2)
			SetPedComponentVariation(GetPlayerPed(-1), 6, 12, 12, 2)
			SetPedHeadBlendData(GetPlayerPed(-1), 29, 29, 0, 29, 29, 0, 1.0, 1.0, 0, true)
			
			Character['mom'] = 29
			Character['Dad'] = 29
			Character['face'] = 1.0
			Character['skin'] = 1.0
			Character['tshirt_1'] = 15
			Character['torso_1'] = 146
			Character['pants_1'] = 3
			Character['pants_2'] = 7
			Character['shoes_1'] = 12
			Character['shoes_2'] = 12
			
			reloadMenuFreeMode()
		elseif skin == "mp_f_freemode_01" then
			Character['sex'] = 1
            SetPedComponentVariation(GetPlayerPed(-1), 11, 27, 0, 2)--torso_1
            SetPedComponentVariation(GetPlayerPed(-1), 4, 3, 15, 2)--pants_1
			SetPedComponentVariation(GetPlayerPed(-1), 6, 66, 5, 2)--shoes_1
			SetPedHeadBlendData(GetPlayerPed(-1), 29, 29, 0, 29, 29, 0, 1.0, 1.0, 0, true)
			
			Character['mom'] = 29
			Character['Dad'] = 29
			Character['face'] = 1.0
			Character['skin'] = 1.0
			Character['glasses_1'] = -1
			Character['torso_1'] = 27
			Character['pants_1'] = 3
			Character['pants_2'] = 15
			Character['shoes_1'] = 66
			Character['shoes_2'] = 5
			reloadMenuFreeMode()
        end
		Character['model_hash'] = model
		reloadMenuOtherPed()
		--_menuPool:RefreshIndex()
        SetModelAsNoLongerNeeded(model)
		TriggerEvent('esx:restoreLoadout')
    else
    end
end