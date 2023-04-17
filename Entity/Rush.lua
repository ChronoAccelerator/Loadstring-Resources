local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local Rush = Spawner.createEntity({
        CustomName = "Rush",
        Model = "https://github.com/ChronoAccelerator/Public-Scripts/blob/main/CustomEntities/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
        Speed = 100,
        DelayTime = 3,
        HeightOffset = 0,
        CanKill = true,
        KillRange = 50,
        BackwardsMovement = false,
        BreakLights = true,
        FlickerLights = {
            true,
            1.3,
        },
        Cycles = {
            Min = 1,
            Max = 1,
            WaitTime = 2,
        },
        CamShake = {
            true,
            {3.5, 20, 0.1, 1},
            100,
        },
        Jumpscare = {
            false,
            {
                Image1 = "rbxassetid://10483855823",
                Image2 = "rbxassetid://10483999903",
                Shake = true,
                Sound1 = {
                    10483790459,
                    { Volume = 0.5 },
                },
                Sound2 = {
                    10483837590,
                    { Volume = 0.5 },
                },
                Flashing = {
                    true,
                    Color3.fromRGB(255, 255, 255),
                },
                Tease = {
                    true,
                    Min = 1,
                    Max = 3,
                },
            },
        },
        --CustomDialog = {"You died to Rush...", "Pay attention to any cues that may hint at its arrival."},
    })

Rush.Debug.OnDeath = function()
    firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Rush...", "Pay attention to any cues that may hint at its arrival."}, "Blue")
end

Spawner.runEntity(Rush)
