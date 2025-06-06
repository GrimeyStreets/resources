Config = Config or {}

Config.Blips = {
    house_sell = {
        enable = true,
        sprite = 350,
        colour = 43,
        scale = 0.5,
        label = 'House for Sale'
    },
    -- For Admin to be able to see other player houses
    admin_owned_house = {
        label = 'Player House',
        enable = true,
        sprite = 40,
        colour = 50,
        scale = 0.6,
    },
    -- For Realestate to be able to see other player houses
    agent = {
        label = 'Realestate house',
        enable = true,
        sprite = 40,
        colour = 74,
        scale = 0.6,
    },
    agent_owned_house = {
        label = 'Player Estate House',
        enable = true,
        sprite = 40,
        colour = 65,
        scale = 0.6,
    },
    owned_house = {
        enable = true,
        sprite = 40,
        colour = 60,
        scale = 0.8,
    },
    apartment_sell = {
        enable = true,
        sprite = 476,
        colour = 43,
        scale = 0.5,
        label = 'Apartment for Sale'
    },
    owned_apartment = {
        enable = true,
        sprite = 475,
        colour = 60,
        scale = 0.8,
    },
    owned_flat = {
        enable = true,
        sprite = 475,
        colour = 47,
        scale = 0.8,
    },
    flat_available = {
        enable = true,
        sprite = 476,
        colour = 2,
        scale = 0.8,
    },
    flat_unavailable = {
        enable = true,
        sprite = 475,
        colour = 76,
        scale = 0.8,
    },
}
