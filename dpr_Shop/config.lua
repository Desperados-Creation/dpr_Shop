---------------------------------------------------------------------------------
-- Script par Desperados#0001                                                  -- 
-- Lien du discord pour toute mes créations: https://discord.gg/dkHFBkBBPZ     --
-- Lien du github pour télécharger le script                                   --
---------------------------------------------------------------------------------

Config = {
    blip = true, -- Affichage du blip (true = oui, false = non)

    BlipId = 52, -- Id du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipTaille = 0.7, -- Taille du blip
    BlipCouleur = 2, -- Couleur du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)

    marker = true, -- Affichage du marker (true = oui, false = non)

    MarkerType = 29, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
    MarkerSizeLargeur = 1.0, -- Largeur du marker
    MarkerSizeEpaisseur = 1.0, -- Épaisseur du marker
    MarkerSizeHauteur = 1.0, -- Hauteur du marker
    MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 88, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 201, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 26, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    Text = "Appuyer sur ~r~[E] ~s~pour accèder à la ~r~supérette ~s~!", -- Text écris lors de l'approche du blip voir: https://discord.gg/dkHFBkBBPZ Channel couleur pour changer la couleur du texte 

    Nourriture = {
        {Label = 'Pain', Value = 'bread', Price = 4},
        {Label = 'Sandwitch', Value = 'sandwitch', Price = 9},
        {Label = 'Pasta Box', Value = 'pastabox', Price = 12}, 
    },

    Boisson = {
        {Label = 'Bouteille d\'eau', Value = 'water', Price = 4},
        {Label = 'Jus d\'orange', Value = 'jusdorange', Price = 7},
        {Label = 'Fruit shoot', Value = 'fruitshoot', Price = 4}, 
        {Label = 'Capri Sun', Value = 'carpisun', Price = 3}, 
    },

    Alcool = {
        {Label = 'Desperados', Value = 'desperados', Price = 8},
        {Label = 'Bière', Value = 'biere', Price = 7},
        {Label = 'Vin rouge', Value = 'vinrouge', Price = 4}, 
        {Label = 'Champagne', Value = 'champagne', Price = 3}, 
    },

    Divers = {
        {Label = 'Téléphone', Value = 'telephone', Price = 250},
        {Label = 'Carte Sim', Value = 'cartesim', Price = 16},
        {Label = 'Cigarrette', Value = 'cigarrette', Price = 27}, 
    },


    positionShop = { -- Position des shop sur la map
        InteractZone = {
            vector3(26.05, -1345.72, 29.49),
            vector3(2557.45, 382.28, 108.62),
            vector3(-3038.93, 585.94, 7.9),
            vector3(-3241.92, 10001.46, 12.83),
            vector3(547.43, 2671.71, 42.15),
            vector3(1961.46, 3740.67, 32.34),
            vector3(2678.91, 3280.67, 55.24),
            vector3(1729.21, 6414.13, 35.03),
            vector3(1135.8, -982.28, 46.41),
            vector3(-1222.91, -906.98, 12.32),
            vector3(-1487.553, -379.1, 40.16),
            vector3(-2968.24, 390.91, 15.04),
            vector3(1166.02, 2708.93, 38.15),
            vector3(1392.56, 3604.68, 34.98),
            vector3(-48.51, -1757.51, 29.42),
            vector3(1163.37, -323.8, 69.2),
            vector3(-707.5, -914.26, 19.215),
            vector3(-1820.52, 792.51, 138.11),
            vector3(1698.38, 4924.4, 42.06)
        }
    }
}