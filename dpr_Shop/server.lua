ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterServerEvent('dpr_Shop:Achat')
AddEventHandler('dpr_Shop:Achat', function(abcdef, Label, Value, Price) 
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= Price then
	    xPlayer.removeMoney(Price)
    	xPlayer.addInventoryItem(Value, 1)
		local xPlayers	= ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			Citizen.Wait(500) 
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Supérette', '~o~2~r~4~g~7', "Vous venez d\'acheter ~b~1x "..Label.." ~s~pour ~r~"..Price.."$ ~s~!", 'CHAR_ACTING_UP', 1)
		end
	else 
		local xPlayers	= ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			Citizen.Wait(500) 
        	TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Supérette', '~o~2~r~4~g~7', 'Vous n\'avez pas suffisament d\'argent !', 'CHAR_ACTING_UP', 1)
		end
    end
end)  