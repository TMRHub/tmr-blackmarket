-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD =)
-- https://discord.gg/kWwM3Bx

--------------------------------------------------------------------------------------------------------
-- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT

-- YOU SHOUD RESET AK4Y-BLACKMARKET SQL, WHEN YOU CHANGE ANYTHING ON TASKS... ITS NUI DEVTOOLS PROTECT
--------------------------------------------------------------------------------------------------------

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.TaskResetPeriod = 1 -- DAY (Tasks are reset and become available again)
AK4Y.WeaponsAreItem = true -- If your weapons are item then you should set this TRUE.
AK4Y.DefaultGarage = "pillboxgarage" -- purchased vehicles will be sent to this garage

AK4Y.Translate = {
    male = "MALE",
    female = "FEMALE",
}

AK4Y.Blackmarkets = {
    {
        pedName = "AK4Y", 
        pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
        pedCoord = vector3(606.67, -463.62, 23.74), -- ped coord
        h = 351, -- ped heading
        drawText = "Nervous-Looking Man",
        authorizedJobs = {"all"}, -- if you type all then all players will have access
        -- authorizedJobs = {"gang1", "gang2"}, -- If you want to integrate the job, this is the example.
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Blackmarket",
            blipIcon = 68,
            blipColour = 3,
        },
    },
    -- {
    --     pedName = "AK4Y", 
    --     pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
    --     pedCoord = vector3(600.11, -462.05, 24.38),
    --     drawText = "Nervous-Looking Man",
    --     authorizedJobs = {"gang1", "gang2"}
    --     h = 351,
    --     blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
    --         blip = false,
    --         blipName = "Blackmarket",
    --         blipIcon = 68,
    --         blipColour = 3,
    --     },
    -- },
}

AK4Y.Categories = {
    { category = "weapon", label = "WEAPON" },
    { category = "item", label = "ITEM" },
    { category = "knife", label = "KNIFE" },
}

AK4Y.CategoryItems = {
    { id = 1, category = "weapon", itemName = "weapon_combatpistol", type = "WEAPON", label = "COMBAT PISTOL", price = 7000, count = 1, level = 1, image = "./images/weapon_combatpistol.png" },
    { id = 2, category = "weapon", itemName = "weapon_heavypistol", type = "WEAPON", label = "HEAVY PISTOL", price = 8500, count = 1, level = 2, image = "./images/weapon_heavypistol.png" },
    { id = 3, category = "weapon", itemName = "weapon_appistol", type = "WEAPON", label = "AP PISTOL", price = 12500, count = 1, level = 2, image = "./images/weapon_appistol.png" },
    { id = 4, category = "weapon", itemName = "weapon_heavyshotgun", type = "WEAPON", label = "HEAVY SHOTGUN", price = 75000, count = 1, level = 3, image = "./images/weapon_heavyshotgun.png" },
    { id = 5, category = "weapon", itemName = "weapon_combatpdw", type = "WEAPON", label = "COMBAT PDW", price = 20000, count = 1, level = 4, image = "./images/weapon_combatpdw.png" },
    { id = 6, category = "weapon", itemName = "weapon_smg", type = "WEAPON", label = "SMG", price = 14000, count = 1, level = 5, image = "./images/weapon_smg.png" },
    { id = 7, category = "weapon", itemName = "weapon_advancedrifle", type = "WEAPON", label = "ADVANCED RIFLE", price = 35000, count = 1, level = 11, image = "./images/weapon_advancedrifle.png" },
    { id = 8, category = "weapon", itemName = "weapon_assaultrifle", type = "WEAPON", label = "ASSAULT RIFLE", price = 80000, count = 1, level = 12, image = "./images/weapon_assaultrifle.png" },
    { id = 9, category = "weapon", itemName = "weapon_carbinerifle", type = "WEAPON", label = "CARBINE RIFLE", price = 82000, count = 1, level = 13, image = "./images/carbinerifle.png" },
    { id = 10, category = "item", itemName = "pistol_ammo", type = "ITEM", label = "PISTOL AMMO", price = 250, count = 1, level = 3, image = "./images/pistol_ammo.png" },
    { id = 11, category = "item", itemName = "smg_ammo", type = "ITEM", label = "SMG AMMO", price = 500, count = 1, level = 3, image = "./images/smg_ammo.png" },
    { id = 12, category = "item", itemName = "rifle_ammo", type = "ITEM", label = "RIFLE AMMO", price = 750, count = 1, level = 3, image = "./images/rifle_ammo.png" },
    { id = 13, category = "item", itemName = "shotgun_ammo", type = "ITEM", label = "SHOTGUN AMMO", price = 750, count = 1, level = 3, image = "./images/shotgun_ammo.png" },
    { id = 14, category = "item", itemName = "joint", type = "ITEM", label = "JOINT", price = 1500, count = 1, level = 3, image = "./images/joint.png" },
    { id = 15, category = "item", itemName = "advancedlockpick", type = "ITEM", label = "ADVANCED LOCKPICK", price = 1500, count = 1, level = 3, image = "./images/advancedlockpick.png" },
    { id = 16, category = "knife", itemName = "weapon_switchblade", type = "WEAPON", label = "SWITCHBLADE", price = 1500, count = 1, level = 3, image = "./images/weapon_switchblade.png" },
}

AK4Y.Tasks = {
    {taskId = 1, requiredcount = 1, rewardXP = 1500, taskTitle = "Type 'tasktry' in chat", taskDescription = "Type In Chat /tasktry"},
    {taskId = 2, requiredcount = 10, rewardXP = 15000, taskTitle = "Get Involved in a Store Robbery", taskDescription = "Do A Store Robbery."},
    {taskId = 3, requiredcount = 10, rewardXP = 20000, taskTitle = "Get Involved in a Vangelico Robbery", taskDescription = "Do A Vangelico Robbery."},
    {taskId = 4, requiredcount = 50, rewardXP = 20000, taskTitle = "Take Someone As An Hostage And Kill Him", taskDescription = "Take Someone As An Hostage And Kill Him."},
}