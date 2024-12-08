local clonefunction = clonefunction or function(func)
    return func
end

local cloneref = clonefunction(cloneref) or function(instance)
    return instance
end

local Services = setmetatable({}, {
    __index = function(self, serviceName)

        local serviceInstance = cloneref(game:GetService(serviceName))
        self[serviceName] = serviceInstance

        return serviceInstance
    end
})

local Custom_Games={};
local Banned_Names={};
local Known_Names={};

-- \\ Custom Games Library

Custom_Games={
    ['Game Name']={
        Place_Ids={
            1234,
            9999
        },
        Whitelisted_Parts={
            'PartName',
        }
    },
    ['Murder Mystery 2']={
        Place_Ids={
            142823291,
            335132309,
            636649648,
            73210641948512
        },
        Whitelisted_Parts={
            'Raggy',
            'Santa',
            'Parts',
            'EffectLoader',
        }
    },
    ['Phantom Forces']={
        Place_Ids={
            292439477,
        },
        Whitelisted_Parts={
            'CharStage',
            'DeadBody',
            'ignore',
            'Dead',
            'PlayerModel',
            'RefPlayer',
            'ANTI',
            'BROKER (ZOMBIE)',
            'Cosmetics',
        }
    },
    ['The Wild West']={
        Place_Ids={
            2317712696,
        },
        Whitelisted_Parts={
            'Bear',
            'Horse',
            'Deer',
            'Gator',
            'Joe',
            'Bison',
            'General',
            'HitmanHire',
            'Hunter',
            'FortHenryNPC',
            'OutlawGeneral',
            'OutlawJoe2',
            'OutlawGunStore',
            'OutlawJoe1',
            'Statue',
            'GunStoreNPC',
            'FortSpencerNPC',
            'DonationMayor',
            'Joe2',
            'GeneralPuertoDorado',
            'GunStoreNPCDuertoDorado',
            'Cow',
            'TempAuctionHouseDude',
            'NPCTemplate',
            'Delores',
            'GunStoreNPCPuertoDorado',
        }
    },
    ['Knife Simulator']={
        Place_Ids={
            1167791961,
        },
        Whitelisted_Parts={
            "OOF!",
        }
    },
    ['KAT!']={
        Place_Ids={
            621129760,
        },
        Whitelisted_Parts={
            "CollisionParts",
        }
    },
    ['Apocalypse Rising 2']={
        Place_Ids={
            863266079,
        },
        Whitelisted_Parts={
            'Camera',
            "VanWreck01",
            "PickupWreck01",
            "CarWreck01",
            "VanWreck02",
            "PickupWreck02",
            "CarWreck02",
            "VanWreck03",
            "PickupWreck03",
            "CarWreck03",
            "VanWreck04",
            "PickupWreck04",
            "CarWreck04",
            'Lights',
            'Light',
            'Hair',
            'Equipment',
            'Equipped',
            'Grass',
            'Dirt',
            'Sand',
            'Elements',
            'Zombie',
            'Hat Leather Cap',
        }
    },
    ['D-DAY']={
        Place_Ids={
            901793731,
        },
        Whitelisted_Parts={
            'Barricade',
            'Dummy',
        }
    },
    ['Jailbreak']={
        Place_Ids={
            606849621,
        },
        Whitelisted_Parts={
            'PassengerSick',
            'Player',
            'PlayerDriver',
            'PlayerPassenger',
            'PoliceMan',
            'SWAT Suit',
            'Collector'
            }
        },
    ['Mad City']={
        Place_Ids={
            1224212277,
        },
        Whitelisted_Parts={
            'NPC',
            'Dog',
            'TitainDummy',
        }
    },
    ['Da Hood']={
        Place_Ids={
            2788229376
        },
        Whitelisted_Parts={
            'Special Parts',
            'SpecialParts',
            'Can i get the Red bottle',
            'Can i get the Green bottle',
            'Can i get the Blue bottle',
            'Help the patient for money',
            'Clean the shoes on the floor and come to me for cash',
            'Join/Leave',
        }
    },
    ['Zombie Rush']={
        Place_Ids={
            137885680,
        },
        Whitelisted_Parts={
            'Staff',
            'FracturedBogo',
            'FracturedBWBogo',
            'CherryBlossom',
            'Beacon',
            'Suits',
            'Studs',
            'Jackets',
        }
    },
    ['Gun Simulator']={
        Place_Ids={
            1204176775,
        },
        Whitelisted_Parts={
            'Bar'
        }
    },
    ['Bad Business']={
        Place_Ids={
            3233893879,
        },
        Whitelisted_Parts={
            'HitBox',
            'Mask',
            'Head',
            'Model',
            'DisplayCharacter',
        }
    },
    ['Emergency Response']={
        Place_Ids={
            2534724415
        },
        Whitelisted_Parts={
            'Water tower',
            'EMSNPC',
            'DOTXP',
            'Impounds',
        }
    },
    ['Aimblox']={
        Place_Ids={
            6808416928,
            8255927517
        },
        Whitelisted_Parts={
            'Arrowmain',
            'Arrow Main',
            'ArrowMain',
            'Barriers',
        }
    },
    ['Frontlines']={
        Place_Ids={
            5938036553
        },
        Whitelisted_Parts={
            'Frag',
            'Model',
        }
    },
    ['ArmsOfSolitaire']={
        Place_Ids={
            2555870920,
        },
        Whitelisted_Parts={
            'Appearance',
            'Hitbox',
            'HitboxExtension',
        }
    },
    ['Strucid']={
        Place_Ids={
            2377868063,
            3606833500,
        },
        Whitelisted_Parts={
            'MenuItems',
        }
    },
    ['Sharkbite']={
        Place_Ids={
            8908228901,
        },
        Whitelisted_Parts={
            'Engines',
            'Ducky',
            'S',
            'O',
            'S',
            'BlueDuckyHead',
            'Cage',
            'WaterPistol',
            'DuckyHead',
            'AbracadabraStudio',
        }
    },
    ['Hunting Season']={
        Place_Ids={
            5286116071,
        },
        Whitelisted_Parts={
            'Cashier',
        }
    },
    ['Special Forces Simulator']={
        Place_Ids={
            3733418612,
        },
        Whitelisted_Parts={
            'ColliderFolder',
            'npc',
        }
    },
    ['Those Who Remain']={
        Place_Ids={
            8287862132,
        },
        Whitelisted_Parts={
            'Headshot Model',
            'Small Transformer',
            'Medium Transformer',
            'Large Transformer',
            'Statue',
        }
    },
    ['RE:Infected Main Game']={
        Place_Ids={
            15697416464,
        },
        Whitelisted_Parts={
            'SupplyCrate',
            'Commonmesh',
        }
    },
}

Banned_Names={
    [tostring(Services.Players.LocalPlayer.Name):lower()]='Every Game',
    ['workspace']='Every Game',
};

Known_Names={
    Head={ -- All Lowercase
        ['exampleheadname']={
            Game='Just An Example',
            GameLink='https://www.roblox.com/games/123456789/Just An Example',
            CharacteristicType='Head',
        },
        ['tpvbodyvanillahead']={
            Game='FRONTLINES',
            GameLink='https://www.roblox.com/games/5938036553/FRONTLINES',
            CharacteristicType='Head',
        },
        ['top']={ --[[head_only]]
            Game='Riot Fall BETA',
            GameLink='https://www.roblox.com/games/7796842481/RIOTFALL-Beta#!/about',
            CharacteristicType='Head',
        },
        ['engine']={ --[[head_only]]
            Game='Sharkbite 2',
            GameLink='https://www.roblox.com/games/8908228901/SharkBite-2',
            CharacteristicType='Head',
        },
        ['eyes']={
            Game='Hunting Season [BETA]',
            GameLink='https://www.roblox.com/games/5286116071/Hunting-Season-BETA',
            CharacteristicType='Head',
        },
    },
    Torso={
        ['exampletorsoname']={
            Game='Just An Example',
            GameLink='https://www.roblox.com/games/123456789/Just An Example',
            CharacteristicType='Torso / HumanoidRootPart',
        },
        ['tpvbodyvanillatorsofront']={
            Game='FRONTLINES',
            GameLink='https://www.roblox.com/games/5938036553/FRONTLINES',
            CharacteristicType='Torso / HumanoidRootPart',
        },
        ['bottom']={
            Game='Riot Fall BETA',
            GameLink='https://www.roblox.com/games/7796842481/RIOTFALL-Beta#!/about',
            CharacteristicType='Torso / HumanoidRootPart',
        },
        ['shark']={ --[[head_only]]
            Game='Sharkbite 2',
            GameLink='https://www.roblox.com/games/8908228901/SharkBite-2',
            CharacteristicType='Torso / HumanoidRootPart',
        },
    }
};

return {
    Custom_Games = Custom_Games,
    Banned_Names = Banned_Names,
    Known_Names = Known_Names
}
