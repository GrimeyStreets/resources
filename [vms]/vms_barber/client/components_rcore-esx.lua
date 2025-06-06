if (Config.Core ~= 'ESX' or Config.SkinManager ~= 'rcore_clothing') then
    return
end

Character_RCore = {}

function rcore_switcher(type, number)
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

    SetPedHeadOverlay(myPed, 4, Character_RCore['makeup_1'], (Character_RCore['makeup_2'] / 10))
    SetPedHeadOverlayColor(myPed, 4, 2, Character_RCore['makeup_3'], Character_RCore['makeup_4'])

	SetPedEyeColor(myPed, Character_RCore['eye_color'])

    SetPedHeadOverlay(myPed, 2, Character_RCore['eyebrows_1'], (Character_RCore['eyebrows_2'] / 10) + 0.0)
    SetPedHeadOverlayColor(myPed, 2, 1, Character_RCore['eyebrows_3'], Character_RCore['eyebrows_4'])

    SetPedHeadOverlay(myPed, 5, Character_RCore['blush_1'], (Character_RCore['blush_2'] / 10) + 0.0)
	SetPedHeadOverlayColor(myPed, 5, 2,	Character_RCore['blush_3'], Character_RCore['blush_4'])
end