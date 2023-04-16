local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local waiting = math.random(1,5)
    local Rebounds = math.random(3,6)

    local ArrivalSound = GetGitSoundID("https://github.com/ChronoAccelerator/Public-Scripts/blob/main/CustomSounds/AmbushArrival.ogg?raw=true", "AmbushArrival")

    local ArrivalSND = Instance.new("Sound")
    ArrivalSND.Parent = workspace
    ArrivalSND.SoundId = ArrivalSound
    ArrivalSND.Name = "Ambush Arrival"
    ArrivalSND.Volume = 1
    ArrivalSND.PlayOnRemove = true
    task.wait(1)
    ArrivalSND:Destroy()

    local Ambush = Spawner.createEntity({
        CustomName = "Ambush",
        Model = "https://github.com/ChronoAccelerator/Public-Scripts/blob/main/CustomEntities/Ambushing.rbxm?raw=true", -- Can be GitHub file or rbxassetid
        Speed = 300,
        DelayTime = 5,
        HeightOffset = 0,
        CanKill = true,
        KillRange = 100,
        BackwardsMovement = false,
        BreakLights = true,
        FlickerLights = {
            false,
            1.3,
        },
        Cycles = {
            Min = 2,
            Max = Rebounds,
            WaitTime = waiting,
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
        CustomDialog = {"You died to who you call Ambush...", "It is a tricky one.", "Use what you have learned from Rush!"},
    })

    Spawner.runEntity(Ambush)
