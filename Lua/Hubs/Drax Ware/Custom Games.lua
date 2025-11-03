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
        CustomParts={
            Head={
                'FrogHeadExample',
            },
            Torso={
                'FrogChestExample',
            },
        },
        Whitelisted_Parts={
            'PartName',
        },
    },
    ['Murder Mystery 2']={
        Place_Ids={
            142823291,
            335132309,
            636649648,
            73210641948512,
        },
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'Raggy',
            'Santa',
            'Parts',
            'EffectLoader',
        },
    },
    ['Phantom Forces']={
        Place_Ids={
            292439477,
        },
        CustomParts={
            Head={},
            Torso={},
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
        },
    },
    ['The Wild West']={
        Place_Ids={
            2317712696,
        },
        CustomParts={
            Head={},
            Torso={},
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
        },
    },
    ['Knife Simulator']={
        Place_Ids={
            1167791961,
        },
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            "OOF!",
        }
    },
    ['KAT!']={
        Place_Ids={
            621129760,
        },
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            "CollisionParts",
        }
    },
    ['Apocalypse Rising 2']={
        Place_Ids={
            863266079,
        },
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'PassengerSick',
            'Player',
            'PlayerDriver',
            'PlayerPassenger',
            'PoliceMan',
            'SWAT Suit',
            'Collector',
        }
    },
    ['Mad City']={
        Place_Ids={
            1224212277,
        },
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'Bar',
        }
    },
    ['Bad Business']={
        Place_Ids={
            3233893879,
        },
        CustomParts={
            Head={},
            Torso={},
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
            2534724415,
        },
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'Water tower',
            'EMSNPC',
            'DOTXP',
            'Impounds',
            'workersandrobbersonly',
            'clothinggiver',
            'clothing',
            'news station workers',
            'Fast Food Restaurant worker',
            'Main',
            'Valley Traffic Worker',
            'Gadget Shack Worker',
            'Hospital worker',
            'Eagle Construction',
            'Farmer',
            'Record Store interior .Model. ',
            'Record Store interior',
            'Clothes',
            'Eddie',
            'Big foot',
            'Bigfoot',
            'shirtmodel',
            'npc',
            ' ',
            '',
        }
    },
    ['Aimblox']={
        Place_Ids={
            6808416928,
            8255927517,
        },
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={
                'tpvbodyvanillahead',
            },
            Torso={
                'tpvbodyvanillatorsofront',
            },
        },
        Whitelisted_Parts={
            'Frag',
            'Model',
        },
    },
    ['ArmsOfSolitaire']={
        Place_Ids={
            2555870920,
        },
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'MenuItems',
        }
    },
    ['Sharkbite']={
        Place_Ids={
            8908228901,
        },
        CustomParts={
            Head={
                'engine',
            },
            Torso={
                'shark',
            },
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
            120073741652089,
        },
        CustomParts={
            Head={
                'brain',
            },
            Torso={
                'heart',
            },
        },
        Whitelisted_Parts={
            'Cashier',
        }
    },
    ['Special Forces Simulator']={
        Place_Ids={
            3733418612,
        },
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
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
        CustomParts={
            Head={},
            Torso={},
        },
        Whitelisted_Parts={
            'SupplyCrate',
            'Commonmesh',
        }
    },
    ['RIOTFALL [Beta]']={
        Place_Ids={
            7796842481,
            12106443560,
            12615683183,
            12615685299,
        },
        CustomParts={
            Head={
                'top',
            },
            Torso={
                'bottom',
            },
        },
        Whitelisted_Parts={},
    },
    ['DOORS (GAME)']={
        Place_Ids={
            6516141723,
            6839171747,
        },
        CustomParts={
            Head = {
                'key',
                'goldvisualholder',
                'rushnew',
                'rush',
            },
            Torso = {
                'keyhitbox',
                'rushnew',
                'rush',
            },
        },
        Whitelisted_Parts={},
    },
    ['Dragon Soul - Earth']={
        Place_Ids={
            16622617059,
            14230662527,
        },
        CustomParts={
            Head = {
                'sphere',
            },
            Torso = {
                'numbergeometry',
            },
        },
        Whitelisted_Parts={},
    },
}

Banned_Names={
    [tostring(Services.Players.LocalPlayer.Name):lower()]='Every Game',
    ['workspace']='Every Game',
};

Known_Names={
    Head={},
    Torso={},
};

return {
    Custom_Games = Custom_Games,
    Banned_Names = Banned_Names,
    Known_Names = Known_Names
}

