Config, Locales = {}, {}

Config.Locale = 'en' -- en / pt / es (not yet) / fr (not yet) / de (not yet)

Config.Debug = false -- true = Debug mode, it will show the debug messages on the console

Config.AutoAddDatabaseTables = true -- true = Auto add the database tables | false = You need to add the database tables manually

Config.AutoCreateSociety = true -- true = Auto create the society on the database tables | false = You need to create the society manually

Config.UseOkokNotify = false -- true = okokNotify | false = qb-notify (You can change the notification system on cl_utils.lua)

Config.UseOkokTextUI = true -- true = okokTextUI | false = qb-drawtext

Config.UseOkokRequests = false -- true = okokRequests | false right away

Config.UseOkokBanking = true -- true = okokBanking | false = qb-banking ( For transactions )

Config.UseJobBlip = true -- true = marker or target | false = open with a command

Config.UseJobBlipAndCommand = false -- true = marker or target and command | false = only marker or target

Config.UseTarget = false -- true = Target | false = textUI

Config.EventPrefix = "okokBossMenu"  -- This will change the prefix of the events name so if Config.EventPrefix = "example" the events will be "example:event"

Config.SocietySystem = "okokBanking" -- qb-banking / qb-management / okokBanking

Config.TargetSystem = "ox-target" -- The target system you are using (qb-target / ox-target)

Config.InventorySystem = "ox-inventory" -- The inventory system you are using ( qb-inventory / qb-inventory-new / ox-inventory / qs-inventory )

Config.ClothingSystem = "illenium-appearance" -- The clothing system you are using ( qb-clothing / illenium-appearance )

Config.OpenBossMenuCommand = "openbossmenu" -- The command to open the boss menu if Config.UseJobBlip = false

Config.OpenGangMenuCommand = "opengangmenu" -- The command to open the gang menu if Config.UseJobBlip = false

Config.OpenDutyCommand = "openjobduty" -- The command to open the duty menu if Config.UseJobBlip = false

Config.OpenGangDutyCommand = "opengangduty" -- The command to open the gang duty menu if Config.UseJobBlip = false

Config.Currency = "$" -- The currency used on the script

Config.DefaultPaymentAfterFire = 50 -- The default payment after being fired

Config.HireDistance = 3.0 -- The distance that the player needs to be to hire someone

Config.MarkerDistance = 10 -- The distance that the player needs to be to see the marker

Config.MarkerID = 21 -- The marker ID for the job locations

Config.MarkerColors = { r = 31, g = 94, b = 255, a = 90 } -- The marker colors for the job locations

Config.UseQBCoreBoss = false -- true = It will use isBoss from the metadata of QBCore | false = It will use the Config.BossGrades

Config.BossGrades = { -- The boss grades that can access the boss menu ( you can get it on qb-core/shared/jobs.lua )
	'Boss',
	'Chief',
	'Owner',
}

Config.JobLocations = {
    ['police'] = { bossCoords = {vector3(446.99, -989.57, 34.24)}, dutyCoords = {vector3(439.03, -1000.97, 30.93)} },
	['ambulance'] = { bossCoords = {vector3(298.95, -598.97, 57.82)}, dutyCoords = {vector3(323.43, -582.32, 57.82)} },
	['mcdoodies'] = { bossCoords = {vector3(95.46, 291.53, 110.21)}, dutyCoords = {vector3(88.40, 279.53, 110.21)} },
	['leafnlatte'] = { bossCoords = {vector3(185.73, -266.34, 54.04)}, dutyCoords = {vector3(189.19, -255.09, 53.97)} },
	['clucknbites'] = { bossCoords = {vector3(208.11, -174.22, 54.61)}, dutyCoords = {vector3(221.45, -178.91, 54.62)} },
	['hookahloungev2'] = { bossCoords = {vector3(-430.23, 51.35, 46.31)}, dutyCoords = {vector3(-416.71, 37.21, 46.29)} },
	['khusbites'] = { bossCoords = {vector3(-515.34, 51.16, 44.59)}, dutyCoords = {vector3(-538.69, 41.64, 44.58)} },
	['pizzacrust'] = { bossCoords = {vector3(555.67, 108.17, 96.56)}, dutyCoords = {vector3(541.97, 116.34, 96.56)} },
	['chickenwings'] = { bossCoords = {vector3(1248.32, -357.35, 69.21)}, dutyCoords = {vector3(1245.77, -351.41, 69.21)} },
	['popchicken'] = { bossCoords = {vector3(183.13, -1448.44, 29.22)}, dutyCoords = {vector3(175.07, -1445.99, 29.22)} },
	['donutspot'] = { bossCoords = {vector3(-580.41, -885.02, 25.95)}, dutyCoords = {vector3(-589.51, -891.18, 25.95)} },
	['barney_autos'] = { bossCoords = {vector3(-197.35, -1362.29, 30.59)}, dutyCoords = {vector3(-196.80, -1350.34, 30.59)} },
}

-------------------------- DISCORD LOGS

Config.BotName = 'ServerName' -- Write the desired bot name

Config.ServerName = 'ServerName' -- Write your server's name

Config.IconURL = '' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.DepositWebhook = true
Config.DepositWebhookColor = '65280'

Config.WithdrawWebhook = true
Config.WithdrawWebhookColor = '16711680'

Config.HireWebhook = true
Config.HireWebhookColor = '65280'

Config.FireWebhook = true
Config.FireWebhookColor = '16711680'

Config.EditEmployeeRankWebhook = true
Config.EditEmployeeRankWebhookColor = '65280'

Config.OnDutyWebhook = true
Config.OnDutyWebhookColor = '65280'

Config.OffDutyWebhook = true
Config.OffDutyWebhookColor = '16711680'

Config.GivenBonusWebhook = true
Config.GivenBonusWebhookColor = '65280'

-------------------------- LOCALES (DON'T TOUCH)

function _okok(id)
	if Locales[Config.Locale][id] then
		return Locales[Config.Locale][id]
	else
		print("The locale '"..id.."' doesn't exist!")
	end
end