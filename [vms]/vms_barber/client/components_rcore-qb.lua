if (Config.Core ~= 'QB-Core' or Config.SkinManager ~= 'rcore_clothing') then
    return
end

Default_Character_RCore = {}
Character_RCore = {}

function rcore_save_db(skin)
    local data = skin

    data['beard_2'] = tonumber((data['beard_2']) + 0.0)
    data['eyebrows_2'] = tonumber((data['eyebrows_2']) + 0.0)
    data['makeup_2'] = tonumber((data['makeup_2']) + 0.0)
    data['blush_2'] = tonumber((data['blush_2']) + 0.0)
    data['lipstick_2'] = tonumber((data['lipstick_2']) + 0.0)

    return data
end

function rcore_converter(sql)
    local data = {}

    local skin = sql.skin;
    local rcore = sql.rcore;
    
    data['mom'] = rcore.headblend['maleModel']
    data['dad'] = rcore.headblend['femaleModel']
    -- data['maleTone'] = rcore.headblend['maleTone']
    -- data['femaleTone'] = rcore.headblend['femaleTone']
    data['face_weight'] = math.floor(rcore.headblend['modelBlend'] * 10)
    data['skin_weight'] = math.floor(rcore.headblend['toneBlend'] * 10)

    data['nose_1'] = math.floor(rcore.faceFeatures['0'] * 10)
    data['nose_2'] = math.floor(rcore.faceFeatures['1'] * 10)
    data['nose_3'] = math.floor(rcore.faceFeatures['2'] * 10)
    data['nose_4'] = math.floor(rcore.faceFeatures['3'] * 10)
    data['nose_5'] = math.floor(rcore.faceFeatures['4'] * 10)
    data['nose_6'] = math.floor(rcore.faceFeatures['5'] * 10)
    data['eyebrows_5'] = math.floor(rcore.faceFeatures['6'] * 10)
    data['eyebrows_6'] = math.floor(rcore.faceFeatures['7'] * 10)
    data['cheeks_1'] = math.floor(rcore.faceFeatures['8'] * 10)
    data['cheeks_2'] = math.floor(rcore.faceFeatures['9'] * 10)
    data['cheeks_3'] = math.floor(rcore.faceFeatures['10'] * 10)
    data['eye_squint'] = math.floor(rcore.faceFeatures['11'] * 10)
    data['lip_thickness'] = math.floor(rcore.faceFeatures['12'] * 10)
    data['jaw_1'] = math.floor(rcore.faceFeatures['13'] * 10)
    data['jaw_2'] = math.floor(rcore.faceFeatures['14'] * 10)
    data['chin_1'] = math.floor(rcore.faceFeatures['15'] * 10)
    data['chin_2'] = math.floor(rcore.faceFeatures['16'] * 10)
    data['chin_3'] = math.floor(rcore.faceFeatures['17'] * 10)
    data['chin_4'] = math.floor(rcore.faceFeatures['18'] * 10)
    data['neck_thickness'] = math.floor(rcore.faceFeatures['19'] * 10)

    data['eye_color'] = rcore['eyeColor']

    data['hair_1'] = skin['hair'].item
    data['hair_2'] = 0
    data['hair_color_1'] = rcore['hair'].color1
    data['hair_color_2'] = rcore['hair'].color2

    if rcore.headOverlay['0'] then
        data['blemishes_1'] = rcore.headOverlay['0'].id
        data['blemishes_2'] = math.floor(rcore.headOverlay['0'].opacity * 10)
    end

    data['beard_1'] = rcore.headOverlay['1'].id
    data['beard_2'] = rcore.headOverlay['1'].opacity * 10
    data['beard_3'] = rcore.headOverlay['1'].color1
    data['beard_4'] = rcore.headOverlay['1'].color2
    
    data['eyebrows_1'] = rcore.headOverlay['2'].id
    data['eyebrows_2'] = rcore.headOverlay['2'].opacity * 10
    data['eyebrows_3'] = rcore.headOverlay['2'].color1
    data['eyebrows_4'] = rcore.headOverlay['2'].color2

    data['age_1'] = rcore.headOverlay['3'].id
    data['age_2'] = math.floor(rcore.headOverlay['3'].opacity * 10)

    data['makeup_1'] = rcore.headOverlay['4'].id
    data['makeup_2'] = rcore.headOverlay['4'].opacity * 10
    data['makeup_3'] = rcore.headOverlay['4'].color1
    data['makeup_4'] = rcore.headOverlay['4'].color2

    data['blush_1'] = rcore.headOverlay['5'].id
    data['blush_2'] = rcore.headOverlay['5'].opacity * 10
    data['blush_3'] = rcore.headOverlay['5'].color1

    data['complexion_1'] = rcore.headOverlay['6'].id
    data['complexion_2'] = math.floor(rcore.headOverlay['6'].opacity * 10)

    data['sun_1'] = rcore.headOverlay['7'].id
    data['sun_2'] = math.floor(rcore.headOverlay['7'].opacity * 10)

    data['lipstick_1'] = rcore.headOverlay['8'].id
    data['lipstick_2'] = rcore.headOverlay['8'].opacity * 10
    data['lipstick_3'] = rcore.headOverlay['8'].color1
    data['lipstick_4'] = rcore.headOverlay['8'].color2

    data['moles_1'] = rcore.headOverlay['9'].id
    data['moles_2'] = math.floor(rcore.headOverlay['9'].opacity * 10)

    data['chest_1'] = rcore.headOverlay['10'].id
    data['chest_2'] = math.floor(rcore.headOverlay['10'].opacity * 10)
    data['chest_3'] = rcore.headOverlay['10'].color1

    data['bodyb_1'] = rcore.headOverlay['11'].id
    data['bodyb_2'] = math.floor(rcore.headOverlay['11'].opacity * 10)

    if rcore.headOverlay['12'] then
        data['bodyb_3'] = rcore.headOverlay['12'].color1
        data['bodyb_4'] = rcore.headOverlay['12'].color2
    end

    data['ears_1'] = skin["ear"].item
    data['ears_2'] = skin["ear"].texture
    data['tshirt_1'] = skin["t-shirt"].item
    data['tshirt_2'] = skin["t-shirt"].texture
    data['torso_1'] = skin["torso2"].item
    data['torso_2'] = skin["torso2"].texture
    data['arms'] = skin["arms"].item
    data['arms_2'] = skin["arms"].texture
    data['decals_1'] = skin["decals"].item
    data['decals_2'] = skin["decals"].texture
    data['pants_1'] = skin["pants"].item
    data['pants_2'] = skin["pants"].texture
    data['shoes_1'] = skin["shoes"].item
    data['shoes_2'] = skin["shoes"].texture
    data['mask_1'] = skin["mask"].item
    data['mask_2'] = skin["mask"].texture
    data['bproof_1'] = skin["vest"].item
    data['bproof_2'] = skin["vest"].texture
    data['chain_1'] = skin["accessory"].item
    data['chain_2'] = skin["accessory"].texture
    data['bags_1'] = skin["bag"].item
    data['bags_2'] = skin["bag"].texture
    data['helmet_1'] = skin["hat"].item
    data['helmet_2'] = skin["hat"].texture
    data['glasses_1'] = skin["glass"].item
    data['glasses_2'] = skin["glass"].texture
    data['watches_1'] = skin["watch"].item
    data['watches_2'] = skin["watch"].texture
    data['bracelets_1'] = skin["bracelet"].item
    data['bracelets_2'] = skin["bracelet"].texture

    return data, skin;
end

function rcore_switcher(type, number)
    if type == 'hair_1' then
        Default_Character_RCore['hair'].item = number
    elseif type == 'hair_color_1' then
        Default_Character_RCore['hair'].texture = number
    elseif type == 'beard_1' then
        Default_Character_RCore['beard'].item = number
    elseif type == 'beard_2' then
        Default_Character_RCore['beard'].texture = number
    elseif type == 'lipstick_1' then
        Default_Character_RCore['lipstick'].item = number
    elseif type == 'lipstick_2' then
        Default_Character_RCore['lipstick'].texture = number
    elseif type == 'makeup_1' then
        Default_Character_RCore['makeup'].item = number
    elseif type == 'makeup_2' then
        Default_Character_RCore['makeup'].texture = number
    elseif type == 'eye_color' then
        Default_Character_RCore['eye_color'].item = number
    elseif type == 'eyebrows_1' then
        Default_Character_RCore['eyebrows'].item = number
    elseif type == 'eyebrows_2' then
        Default_Character_RCore['eyebrows'].texture = number
    elseif type == 'blush_1' then
        Default_Character_RCore['blush'].item = number
    elseif type == 'blush_2' then
        Default_Character_RCore['blush'].texture = number
    end
    
    Character_RCore[type] = tonumber(number)
    updateValue()
end

function updateValue()
    local myPed = PlayerPedId()

    SetPedComponentVariation(myPed, 2, Character_RCore['hair_1'], Character_RCore['hair_2'], 2)
    SetPedHairColor(myPed, Character_RCore['hair_color_1'], Character_RCore['hair_color_2'])
    
    SetPedHeadOverlay(myPed, 1, Character_RCore['beard_1'], (Character_RCore['beard_2'] / 10) + 0.0)
    SetPedHeadOverlayColor(myPed, 1, 1, Character_RCore['beard_3'], Character_RCore['beard_4'])

    SetPedHeadOverlay(myPed, 8, Character_RCore['lipstick_1'], (Character_RCore['lipstick_2'] / 10) + 0.0)
    SetPedHeadOverlayColor(myPed, 8, 2, Character_RCore['lipstick_3'], Character_RCore['lipstick_4'])

    SetPedHeadOverlay(myPed, 4, Character_RCore['makeup_1'], (Character_RCore['makeup_2'] / 10) + 0.0)
    SetPedHeadOverlayColor(myPed, 4, 2, Character_RCore['makeup_3'], Character_RCore['makeup_4'])

	SetPedEyeColor(myPed, Character_RCore['eye_color'])

    SetPedHeadOverlay(myPed, 2, Character_RCore['eyebrows_1'], (Character_RCore['eyebrows_2'] / 10) + 0.0)
    SetPedHeadOverlayColor(myPed, 2, 1, Character_RCore['eyebrows_3'], Character_RCore['eyebrows_4'])

    SetPedHeadOverlay(myPed, 5, Character_RCore['blush_1'], (Character_RCore['blush_2'] / 10) + 0.0)
	SetPedHeadOverlayColor(myPed, 5, 2,	Character_RCore['blush_3'], Character_RCore['blush_4'])
end