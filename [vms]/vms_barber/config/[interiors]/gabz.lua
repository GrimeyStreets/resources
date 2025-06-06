--[[
    Gabz - Barber Shops
    https://fivem.gabzv.com/
    https://youtu.be/M56XqlmdWHI?t=13
]]

if GetResourceState('cfx-gabz-barber') ~= 'started' then
    return
end

print('^2Found Interior: ^5Gabz Barber')
print('^4The coordinates were overwritten in the vms_barber/config/[interiors]/gabz.lua^7')


if Config.Barbers['HS_Barber_1'] then
    Config.Barbers['HS_Barber_1'].barberSpawnPos = vector4(140.98, -1703.81, 28.29, 141.26)

    Config.Barbers['HS_Barber_1'].bossMenu = {
        coords = vector3(136.4, -1709.95, 28.5),
        targetCoords = vector4(136.8, -1711.05, 29.29, -40.7),
        targetSize = vector3(2.5, 0.9, 1.0),
    }

    Config.Barbers['HS_Barber_1'].Chairs = {
        [1] = {
            position = vector3(139.61, -1706.78, 28.29),
            barberPos = vector4(140.37, -1706.71, 28.29, 230.39),
            chairCoord = vector4(140.5, -1707.65, 28.72, 234.61),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(137.36, -1709.26, 28.29),
            barberPos = vector4(138.25, -1709.2, 28.29, 218.02),
            chairCoord = vector4(138.38, -1710.21, 28.69, 235.52),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }
end

if Config.Barbers['HS_Barber_2'] then
    Config.Barbers['HS_Barber_2'].barberSpawnPos = vector4(-35.4, -157.92, 56.08, 343.29)
    
    Config.Barbers['HS_Barber_2'].bossMenu = {
        coords = vector3(-33.15, -150.48, 56.3),
        targetCoords = vector4(-33.86, -149.52, 57.08, 159.11),
        targetSize = vector3(2.5, 0.9, 1.0),
    }
        
    Config.Barbers['HS_Barber_2'].Chairs = {
        [1] = {
            position = vector3(-33.78, -151.4, 56.08),
            barberPos = vector4(-34.34, -151.75, 56.08, 66.19),
            chairCoord = vector4(-35.05, -150.9, 56.46, 75.84),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(-34.86, -154.55, 56.08),
            barberPos = vector4(-35.56, -154.88, 56.08, 61.43),
            chairCoord = vector4(-36.21, -154.03, 56.52, 76.47),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }
end

if Config.Barbers['HS_Barber_3'] then
    Config.Barbers['HS_Barber_3'].barberSpawnPos = vector4(-1276.94, -1117.64, 5.99, 92.41)

    Config.Barbers['HS_Barber_3'].bossMenu = {
        coords = vector3(-1284.58, -1118.04, 6.3),
        targetCoords = vector4(-1285.18, -1118.98, 6.99, -91.4),
        targetSize = vector3(2.5, 0.9, 1.0),
    }

    Config.Barbers['HS_Barber_3'].Chairs = {
        [1] = {
            position = vector3(-1280.13, -1118.42, 5.99),
            barberPos = vector4(-1279.57, -1118.85, 5.99, 170.19),
            chairCoord = vector4(-1280.26, -1119.61, 6.36, 176.39),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(-1283.43, -1118.37, 5.99),
            barberPos = vector4(-1282.85, -1119.08, 5.99, 148.48),
            chairCoord = vector4(-1283.49, -1119.67, 6.4, 186.81),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }
end

if Config.Barbers['HS_Barber_4'] then
    Config.Barbers['HS_Barber_4'].barberSpawnPos = vector4(1218.0, -474.69, 65.21, 72.81)

    Config.Barbers['HS_Barber_4'].bossMenu = {
        coords = vector3(1210.45, -473.07, 65.5),
        targetCoords = vector4(1209.61, -473.9, 66.21, -106.31),
        targetSize = vector3(2.5, 0.9, 1.0),
    }

    Config.Barbers['HS_Barber_4'].Chairs = {
        [1] = {
            position = vector3(1214.7, -474.55, 65.21),
            barberPos = vector4(1215.07, -475.25, 65.21, 165.33),
            chairCoord = vector4(1214.28, -475.83, 65.63, 169.93),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(1211.48, -473.69, 65.21),
            barberPos = vector4(1211.84, -474.5, 65.21, 141.98),
            chairCoord = vector4(1211.06, -475.02, 65.57, 170.43),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }
end

if Config.Barbers['HS_Barber_5'] then
    Config.Barbers['HS_Barber_5'].barberSpawnPos = vector4(-274.25, 6223.74, 30.7, 46.03)

    Config.Barbers['HS_Barber_5'].bossMenu = {
        coords = vector3(-279.97, 6228.87, 31.0),
        targetCoords = vector4(-281.21, 6228.56, 31.7, -134.46),
        targetSize = vector3(2.5, 0.9, 1.0),
    }

    Config.Barbers['HS_Barber_5'].Chairs = {
        [1] = {
            position = vector3(-277.18, 6225.44, 30.7),
            barberPos = vector4(-277.04, 6224.71, 30.7, 124.8),
            chairCoord = vector4(-278.14, 6224.57, 31.12, 139.32),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(-279.51, 6227.78, 30.7),
            barberPos = vector4(-279.51, 6226.99, 30.7, 116.0),
            chairCoord = vector4(-280.51, 6226.91, 31.1, 140.0),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }

    
end

if Config.Barbers['HS_Barber_6'] then
    Config.Barbers['HS_Barber_6'].barberSpawnPos = vector4(1929.09, 3735.61, 31.84, 212.33)

    Config.Barbers['HS_Barber_6'].bossMenu = {
        coords = vector3(1933.28, 3729.17, 32.15),
        targetCoords = vector4(1934.45, 3729.12, 32.84, 30.0),
        targetSize = vector3(2.5, 0.9, 1.0),
    }

    Config.Barbers['HS_Barber_6'].Chairs = {
        [1] = {
            position = vector3(1931.34, 3733.17, 31.84),
            barberPos = vector4(1931.65, 3734.0, 31.84, 279.31),
            chairCoord = vector4(1932.58, 3733.8, 32.28, 304.61),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
        [2] = {
            position = vector3(1932.97, 3730.29, 31.84),
            barberPos = vector4(1933.15, 3731.0, 31.84, 290.34),
            chairCoord = vector4(1934.2, 3730.92, 32.24, 306.96),
            targetSize = vector3(1.5, 2.1, 2.3),
            taken = false,
        },
    }
end