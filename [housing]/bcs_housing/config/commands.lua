commands = {
    raid = {
        name = 'raid',
        help = 'Raid home door for police',
        params = {}
    },
    deletehomedoor = {
        name = 'deletehomedoor',
        help = 'Delete a door for your home',
        params = {}
    },
    createhome = {
        name = 'createhome',
        help = 'Create a new home',
        params = {}
    },
    deletehome = {
        name = 'deletehome',
        help = 'Remove nearby home',
        params = {}
    },
    deleteflat = {
        name = 'deleteflat',
        help = 'Remove a flat room',
        params = {
            { name = "name", help = "apt room name" },
        }
    },
    deleteapartment = {
        name = 'deleteapartment',
        help = 'Remove an apartment',
        params = {}
    },
    managehomes = {
        name = 'managehomes',
        help = 'Open your owned houses manager',
        params = {
            { name = 'option', help = '(OPTIONAL) Options: [rented]' }
        }
    },
    createsign = {
        name = 'createsign',
        help = 'Create a signboard for a property',
        params = {}
    },
    realestatehomes = {
        name = 'realestatehomes',
        help = 'Open a list of all created real estate houses',
        params = {}
    },
    starterapartment = {
        name = 'starterapartment',
        help = 'Manage Starter Apartment',
        params = {}
    },
    adminhomes = {
        name = 'adminhomes',
        help = 'Open a list of all houses',
        params = {}
    },
    setarea = {
        name = 'setarea',
        help = 'Set an area for Home IPL / Shell to enable furniture',
        params = {}
    },
    furnish = {
        disabled = false,
        name = 'furnish',
        help = 'Furnish your home',
        params = {}
    },
    editfurniture = {
        disabled = false,
        name = 'editfurniture',
        help = 'Edit existing furniture in your home',
        params = {}
    },
    houseblip = {
        name = 'houseblip',
        help = 'Hide / show house blip',
        params = {
            { name = 'type', help = 'owned/sell/admin_owned/agent/agent_owned' }
        }
    },
    givehome = {
        name = 'givehome',
        help = 'Admin command for giving home',
        params = {
            { name = 'homeId', help = 'Home Identifier' },
            { name = 'target', help = 'Player Id' },
        }
    },
    revokehome = {
        name = 'revokehome',
        help = 'Admin command to revoke home',
        params = {
            { name = 'homeId', help = 'Home Identifier' },
            { name = 'target', help = '(OPTIONAL) Player Id' },
        }
    },
    extendhome = {
        name = 'extendhome',
        help = 'Admin command to extend a house expiry',
        params = {
            { name = 'homeId', help = 'Home Identifier' },
            { name = 'target', help = '(OPTIONAL) Player Id' },
        }
    },
    givefurniture = {
        name = 'givefurniture',
        help = 'Give a furniture to a target',
        params = {
            { name = 'target', help = 'Player Id' },
            { name = 'model',  help = 'Model Name' },
        }
    },
    startfurniturescreenshot = {
        name = 'startfurniturescreenshot',
        help = 'Cycle through furniture list to screenshot',
        params = {
            { name = 'option', help = 'control / auto (if control, enables cam & prop control)' }
        }
    },
    screenshotfurniture = {
        debug = true,
        name = 'screenshotfurniture',
        help = 'Screenshot individual furniture',
        params = {
            { name = 'model', help = 'Model Name' },
        }
    },
    screenshotinterior = {
        debug = true,
        name = 'screenshotinterior',
        help = 'Screenshot individual interior',
        params = {
            { name = 'type',     help = '[ipl/shell]' },
            { name = 'interior', help = 'Shell or IPL name' }
        }
    },
    renameflat = {
        name = 'renameflat',
        help = 'Rename a flat name',
        params = {}
    },
    redeemhome = {
        name = 'redeemhome',
        help = 'Redeem a home purchased via tebex',
        params = {
            { name = 'homeId',  help = 'Your 5 digit home id example 25131' },
            { name = 'tbxCode', help = 'the tebex code' }
        }
    }
}
