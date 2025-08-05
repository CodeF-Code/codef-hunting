lib.locale()

Config = {}
Config.Debug = false
Config.Target = nil               -- only supporting ox_target and qb-target | nil to disable targeting
Config.SpawnDelay = 1             -- seconds [how much time it should take between spawning animals]
Config.DeleteEntityRadius = 300.0 -- will delete animal if your 400 meters away from them

Config.TrackerItem = "animal_tracker"
Config.TrackingDuration = 60      -- seconds
Config.DelayBetweenTracks = 60   -- seconds
Config.TrackingFailureChance = 10 -- [1 - 100]

Config.AimBlock = {
    enable = true,
    global = true,     -- false if you want to have aimblock only in hunting zones
    weaponsToBlock = { -- weapons that are disabled to shoot at players
        `weapon_musket`,
        -- `WEAPON_HEAVYSNIPER`,
    }
}

Config.BaitItem = "huntingbait"
Config.BaitAttractionDistance = 100.0 -- in 200 radius it will atract an animal
Config.BaitTimeLimit = 2              -- minutes

Config.ImagesPath = "nui://black_hunting/_icons/"

-- _    _                _    _                  ______
-- | |  | |              | |  (_)                |___  /
-- | |__| | _   _  _ __  | |_  _  _ __    __ _      / /  ___   _ __    ___  ___
-- |  __  || | | || '_ \ | __|| || '_ \  / _` |    / /  / _ \ | '_ \  / _ \/ __|
-- | |  | || |_| || | | || |_ | || | | || (_| |   / /__| (_) || | | ||  __/\__ \
-- |_|  |_| \__,_||_| |_| \__||_||_| |_| \__, |  /_____|\___/ |_| |_| \___||___/
--                                        __/ |
--                                       |___/

Config.HuntingZones = {
    ["CHILIAD_MOUNTAINS"] = {
        coords = vec3(-557.85, 4962.78, 149.26),
        radius = 300.0,
        maxSpawns = 3,                                                  -- max animals spawned at one time
        allowedWeapons = { "weapon_musket", "WEAPON_NPDS_SURV_DAGGER" }, -- nil if you want to allow every weapon
        zone_radius = {
            enable = true,
            color = 0,
            opacity = 100,
        },
        blip = {
            enable = true,
            name = 'Hunting',
            type = 141,
            scale = 1.0,
            color = 0,
        },
        animals = {
            {
                model = "BrnBear",
                chance = 80, -- chance of spawning
                harvestTime = 10,
                harvestWeapons = { "WEAPON_NPDS_SURV_DAGGER" },
                blip = {
                    enable = true,
                    name = 'Bear',
                    type = 119,
                    scale = 0.8,
                    color = 1,
                },
                marker = {
                    enable = true,
                    color = { r = 196, g = 136, b = 77, a = 150 }
                },
                items = {
                    skins = {
                        {
                            item = "bear_skin1",
                            chance = 70,
                            maxQuantity = 1,
                        },
                        {
                            item = "bear_skin2",
                            chance = 50,
                            maxQuantity = 1,
                        },
                        {
                            item = "bear_skin3",
                            chance = 30,
                            maxQuantity = 1,
                        },
                    },
                    meat = {
                        {
                            item = "bear_meat",
                            chance = 90,
                            maxQuantity = 10,
                        },
                        -- {
                        --     item = "raw_meat",
                        --     chance = 100,
                        --     maxQuantity = 10,
                        -- },
                    },
                    extra = { -- rare items
                        {
                            item = "bear_head",
                            chance = 30,
                            maxQuantity = 1,
                        },
                         {
                             item = "bear_special",
                             chance = 50,
                             maxQuantity = 1,
                         },
                    }

                }
            },
           
            {
                model = "a_c_boar",
                chance = 80, -- chance of spawning
                harvestTime = 5,
                harvestWeapons = { "WEAPON_NPDS_SURV_DAGGER" },
                blip = {
                    enable = true,
                    name = 'Boar',
                    type = 119,
                    scale = 0.8,
                    color = 0,
                },
                marker = {
                    enable = true,
                    color = { r = 196, g = 136, b = 77, a = 150 }
                },
                items = {
                    skins = {
                        {
                            item = "boar_skin_1",
                            chance = 70,
                            maxQuantity = 1,
                        },
                        {
                            item = "boar_skin_2",
                            chance = 50,
                            maxQuantity = 1,
                        },
                        {
                            item = "boar_skin3",
                            chance = 30,
                            maxQuantity = 1,
                        },
                    },
                    meat = {
                        {
                            item = "boar_meat",
                            chance = 100,
                            maxQuantity = 10,
                        },
                        -- {
                        --     item = "raw_meat",
                        --     chance = 100,
                        --     maxQuantity = 10,
                        -- },
                    },
                    extra = { -- rare items
                        {
                            item = "boar_head",
                            chance = 30,
                            maxQuantity = 1,
                        },
                         {
                             item = "boar_skin_special",
                             chance = 50,
                             maxQuantity = 1,
                         },
                    }

                }
            },
        }
    },
    -- ["CHILIAD_MOUNTAINS2"] = {
    --     coords = vec3(1125.88, 4622.2, 80.08),
    --     radius = 200.0,
    --     maxSpawns = 5,                                                  -- max animals spawned at one time
    --     allowedWeapons = { "WEAPON_HEAVYSNIPER_MK2", "WEAPON_DAGGER" }, -- nil if you want to allow every weapon
    --     blip = {
    --         enable = true,
    --         color = 1,
    --         opacity = 128,
    --     },
    --     animals = {
    --         {
    --             model = "a_c_deer",
    --             chance = 80, -- chance of spawning
    --             harvestTime = 5,
    --             harvestWeapons = { "WEAPON_DAGGER" },
    --             blip = {
    --                 enable = true,
    --                 name = 'Deer',
    --                 type = 8,
    --                 scale = 0.8,
    --                 color = 1,
    --             },
    --             marker = {
    --                 enable = true,
    --                 color = { r = 196, g = 136, b = 77, a = 150 }
    --             },
    --             items = {
    --                 skins = {
    --                     {
    --                         item = "skin_deer_ruined",
    --                         chance = 70,
    --                         maxQuantity = 1,
    --                     },
    --                     {
    --                         item = "skin_deer_low",
    --                         chance = 50,
    --                         maxQuantity = 1,
    --                     },
    --                     {
    --                         item = "skin_deer_medium",
    --                         chance = 30,
    --                         maxQuantity = 1,
    --                     },
    --                     {
    --                         item = "skin_deer_good",
    --                         chance = 25,
    --                         maxQuantity = 1,
    --                     },
    --                     {
    --                         item = "skin_deer_perfect",
    --                         chance = 5,
    --                         maxQuantity = 1,
    --                     },
    --                 },
    --                 meat = {
    --                     {
    --                         item = "raw_meat",
    --                         chance = 100,
    --                         maxQuantity = 10,
    --                     },
    --                     -- {
    --                     --     item = "raw_meat",
    --                     --     chance = 100,
    --                     --     maxQuantity = 10,
    --                     -- },
    --                 },
    --                 extra = { -- rare items
    --                     {
    --                         item = "deer_horn",
    --                         chance = 30,
    --                         maxQuantity = 1,
    --                     },
    --                     -- {
    --                     --     item = "deer_horn",
    --                     --     chance = 30,
    --                     --     maxQuantity = 1,
    --                     -- },
    --                 }

    --             }
    --         },
    --         -- {
    --         --     model = "a_c_deer",
    --         --     chance = 80, -- chance of spawning
    --         --     harvestTime = 5,
    --         --     harvestWeapons = { "WEAPON_DAGGER" },
    --         --     blip = {
    --         --         enable = true,
    --         --         name = 'Deer',
    --         --         type = 8,
    --         --         scale = 0.8,
    --         --         color = 1,
    --         --     },
    --         --     marker = {
    --         --         enable = true,
    --         --         color = { r = 196, g = 136, b = 77, a = 150 }
    --         --     },
    --         --     items = {
    --         --         skins = {
    --         --             {
    --         --                 item = "skin_deer_ruined",
    --         --                 chance = 70,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --             {
    --         --                 item = "skin_deer_low",
    --         --                 chance = 50,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --             {
    --         --                 item = "skin_deer_medium",
    --         --                 chance = 30,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --             {
    --         --                 item = "skin_deer_good",
    --         --                 chance = 25,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --             {
    --         --                 item = "skin_deer_perfect",
    --         --                 chance = 5,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --         },
    --         --         meat = {
    --         --             {
    --         --                 item = "raw_meat",
    --         --                 chance = 100,
    --         --                 maxQuantity = 10,
    --         --             },
    --         --             -- {
    --         --             --     item = "raw_meat",
    --         --             --     chance = 100,
    --         --             --     maxQuantity = 10,
    --         --             -- },
    --         --         },
    --         --         extra = { -- rare items
    --         --             {
    --         --                 item = "deer_horn",
    --         --                 chance = 30,
    --         --                 maxQuantity = 1,
    --         --             },
    --         --             -- {
    --         --             --     item = "deer_horn",
    --         --             --     chance = 30,
    --         --             --     maxQuantity = 1,
    --         --             -- },
    --         --         }

    --         --     }
    --         -- },
    --     }
    -- },

}

-- _____  _
-- / ____|| |
-- | (___  | |__    ___   _ __   ___
-- \___ \ | '_ \  / _ \ | '_ \ / __|
-- ____) || | | || (_) || |_) |\__ \
-- |_____/ |_| |_| \___/ | .__/ |___/
--                      | |
--                      |_|

Config.Shops = {
    ["Hunting Store"] = {
        coords = vector4(967.6, -2121.12, 30.48, 86.84),
        ped = {
            enable = Config.Target and true or true, -- false the last bool to dont use ped
            model = "s_m_m_ammucountry"
        },
        blip = {
            enable = true,
            type = 59,
            scale = 0.7,
            color = 5,
        },
        useDrawText = true,
        items = {
            sell = {
                {
                    item = "skin_deer_ruined",
                    price = 250,
                    label = "Tattered Deer Pelt"

                },
                {
                    item = "skin_deer_low",
                    price = 500,
                    label = "Worn Deer Pelt"

                },
                {
                    item = "skin_deer_medium",
                    price = 700,
                    label = "Supple Deer Pelt"


                },
                {
                    item = "skin_deer_good",
                    price = 1200,
                    label = "Prime Deer Pelt"

                },
                {
                    item = "skin_deer_perfect",
                    price = 2250,
                    label = "Flawless Deer Pelt"


                },
            }

        }
    },
    -- ["HuntGear Store2"] = {
    --     coords = vector4(967.6, -2121.12, 30.48, 86.84),
    --     ped = {
    --         enable = Config.Target and true or true, -- false the last bool to dont use ped
    --         model = "s_m_m_ammucountry"
    --     },
    --     blip = {
    --         enable = true,
    --         type = 59,
    --         scale = 0.7,
    --         color = 5,
    --     },
    --     useDrawText = true,
    --     items = {
    --         sell = {
    --             {
    --                 item = "skin_deer_ruined",
    --                 price = 250,
    --                 label = "Tattered Deer Pelt"

    --             },
    --             {
    --                 item = "skin_deer_low",
    --                 price = 500,
    --                 label = "Worn Deer Pelt"

    --             },
    --             {
    --                 item = "skin_deer_medium",
    --                 price = 700,
    --                 label = "Supple Deer Pelt"


    --             },
    --             {
    --                 item = "skin_deer_good",
    --                 price = 1200,
    --                 label = "Prime Deer Pelt"

    --             },
    --             {
    --                 item = "skin_deer_perfect",
    --                 price = 2250,
    --                 label = "Flawless Deer Pelt"


    --             },
    --         },
    --         buy = {
    --             {
    --                 item = "huntingbait",
    --                 label = "hunting Bait",
    --                 price = 250,
    --             },
    --             {
    --                 item = "campfire",
    --                 label = "Campfire",
    --                 price = 750,
    --             },
    --             {
    --                 item = "animal_tracker",
    --                 label = "Animal Tracker",
    --                 price = 10050,
    --             },
    --         }

    --     }
    -- }
}