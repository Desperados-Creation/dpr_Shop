ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

local index = {
    items = 1
}

local percent = 100
local a = 255
local nombre = {}

Numbers = {}

-- Menu --
local open = false
local ShopMenu = RageUI.CreateMenu("Supérette", "INTERACTION")
local ShopNourritureMenu = RageUI.CreateSubMenu(ShopMenu, "Nourriture", "INTERACTION")
local ShopBoissonMenu = RageUI.CreateSubMenu(ShopMenu, "Boisson", "INTERACTION")
local ShopAlcoolMenu = RageUI.CreateSubMenu(ShopMenu, "Alcool", "INTERACTION")
local ShopDiversMenu = RageUI.CreateSubMenu(ShopMenu, "Divers", "INTERACTION")
ShopMenu.Display.Header = true 
ShopMenu.Closed = function()
    open = false
end

function OpenShopMenu()
    if open then 
		open = false
		RageUI.Visible(ShopMenu, false)
		return
	else
		open = true 
		RageUI.Visible(ShopMenu, true)
		CreateThread(function()
		    while open do 
                RageUI.IsVisible(ShopMenu, function()
                    RageUI.Separator("↓    ~b~Rayons    ~s~↓")
                    RageUI.Button("Nourriture", nil, {RightLabel = "~y~→→→"}, true , {}, ShopNourritureMenu)
                    RageUI.Button("Boisson", nil, {RightLabel = "~y~→→→"}, true, {}, ShopBoissonMenu)
                    RageUI.Button("Alcool", nil, {RightLabel = "~y~→→→"}, true, {}, ShopAlcoolMenu)
                    RageUI.Button("Divers", nil, {RightLabel = "~y~→→→"}, true, {}, ShopDiversMenu)

                    RageUI.Separator("↓    ~r~Fermer    ~s~↓")
                    RageUI.Button("Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            RageUI.CloseAll()
                        end
                    })
                end)

                -- Rayon Nourriture
                RageUI.IsVisible(ShopNourritureMenu, function()
                    RageUI.Separator("↓    ~b~Nourriture    ~s~↓")
                    for k, v in pairs(Config.Nourriture) do
                        RageUI.Button(v.Label .. '', nil, {RightLabel = '~r~'..v.Price.. '$'}, true, {        
                            onSelected = function()
                                local item = v.Value
                                TriggerServerEvent('dpr_Shop:Achat', lastPos, v.Label, v.Value, v.Price)
                            end, 
                        })
                    end

                    RageUI.Separator("↓    ~r~Fermer    ~s~↓")
                    RageUI.Button("Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            RageUI.CloseAll()
                        end
                    })
                end)

                -- Rayon Boisson
                RageUI.IsVisible(ShopBoissonMenu, function()
                    RageUI.Separator("↓    ~b~Boissons    ~s~↓")
                    for k, v in pairs(Config.Boisson) do
                        RageUI.Button(v.Label .. '', nil, {RightLabel = '~r~'..v.Price.. '$'}, true, {        
                            onSelected = function()
                                local item = v.Value
                                TriggerServerEvent('dpr_Shop:Achat', lastPos, v.Label, v.Value, v.Price)
                            end, 
                        })
                    end

                    RageUI.Separator("↓    ~r~Fermer    ~s~↓")
                    RageUI.Button("Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            RageUI.CloseAll()
                        end
                    })
                end)

                -- Rayon Alcool
                RageUI.IsVisible(ShopAlcoolMenu, function()
                    RageUI.Separator("↓    ~b~Alcool    ~s~↓")
                    for k, v in pairs(Config.Alcool) do
                        RageUI.Button(v.Label .. '', nil, {RightLabel = '~r~'..v.Price.. '$'}, true, {        
                            onSelected = function()
                                local item = v.Value
                                TriggerServerEvent('dpr_Shop:Achat', lastPos, v.Label, v.Value, v.Price)
                            end, 
                        })
                    end

                    RageUI.Separator("↓    ~r~Fermer    ~s~↓")
                    RageUI.Button("Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            RageUI.CloseAll()
                        end
                    })
                end)

                -- Rayon Divers
                RageUI.IsVisible(ShopDiversMenu, function()
                    RageUI.Separator("↓    ~b~Divers    ~s~↓")
                    for k, v in pairs(Config.Divers) do
                        RageUI.Button(v.Label .. '', nil, {RightLabel = '~r~'..v.Price.. '$'}, true, {        
                            onSelected = function()
                                local item = v.Value
                                TriggerServerEvent('dpr_Shop:Achat', lastPos, v.Label, v.Value, v.Price)
                            end, 
                        })
                    end

                    RageUI.Separator("↓    ~r~Fermer    ~s~↓")
                    RageUI.Button("Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            RageUI.CloseAll()
                        end
                    })
                end)
            Wait(0)
            end
        end)
    end
end


Citizen.CreateThread(function()
    while true do
		local wait = 750

			for k in pairs(Config.positionShop.InteractZone) do
			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local pos = Config.positionShop.InteractZone
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

            if Config.marker then 
                if dist <= Config.MarkerDistance then
                    wait = 0
                    DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                end
            end

			if dist <= 2.0 then
                wait = 0
                Visual.Subtitle(Config.Text, 1)
                if IsControlJustPressed(1,51) then
                    OpenShopMenu()
                end
		    end
		end
    Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    if Config.blip then
        for k, v in pairs(Config.positionShop.InteractZone) do
            local blip = AddBlipForCoord(v.x, v.y, v.z)

            SetBlipSprite(blip, Config.BlipId)
            SetBlipScale (blip, Config.BlipTaille)
            SetBlipColour(blip, Config.BlipCouleur)
            SetBlipAsShortRange(blip, Config.BlipRange)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName('Supérette')
            EndTextCommandSetBlipName(blip)
        end
    end
end)