function exportHandler(exportName, func)
    AddEventHandler(('__cfx_export_ak47_idcardv2_%s'):format(exportName), function(setCB)
        setCB(func)
    end)
end

Notify = function(msg, type)
    lib.notify({
        type = type or 'info',
        description = msg,
        position = 'top',
    })
end

RegisterNetEvent('ak47_qb_idcardv2:notify', function(msg, type)
	Notify(msg, type)
end)