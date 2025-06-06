Config = Config or {}

Config.FurnitureShop = {
    coords = vec3(2753.46, 3470.33, 56.0),
    size = vec3(13.0, 4.0, 2.5),
    rotation = 65.0,
    -- Blip
    label = 'Furniture Store',
    sprite = 566,
    colour = 27,
    scale = 0.8,
    -- Camera
    furnitureSpawn = vec3(2769.7773, 3467.4678, 55.5595),
}

Config.IsometricFurnitures = {
    'bathroom',
    'bedroom',
    'kitchen',
    'living_room',
    'others'
}

Config.LimitFurniture = {
    ['computer'] = 4
}
