Citizen.CreateThread(function()
    for k, v in pairs(TuningShops) do
        TriggerEvent('esx_society:registerSociety', v.job, v.job, Config.SocietyPrefix..v.job, Config.SocietyPrefix..v.job, Config.SocietyPrefix..v.job, {type = 'private'})
    end
end)