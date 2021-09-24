ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterServerEvent('dpr_Shop:Achat')
AddEventHandler('dpr_Shop:Achat', function(Label, Value, Price) 
	local _src = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= Price then
	    xPlayer.removeMoney(Price)
    	xPlayer.addInventoryItem(Value, 1)
		Citizen.Wait(500) 
		TriggerClientEvent('esx:showAdvancedNotification', _src, 'Supérette', '~o~2~r~4~g~7', "Vous venez d\'acheter ~b~1x "..Label.." ~s~pour ~r~"..Price.."$ ~s~!", 'CHAR_ACTING_UP', 1)
	else 
		Citizen.Wait(500) 
    	TriggerClientEvent('esx:showAdvancedNotification', _src, 'Supérette', '~o~2~r~4~g~7', 'Vous n\'avez pas suffisament d\'argent !', 'CHAR_ACTING_UP', 1)
    end
end)  
