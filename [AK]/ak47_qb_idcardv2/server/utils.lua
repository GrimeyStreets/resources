for i, v in pairs(Config.Cards) do
	CreateUsable(i, function(source, data, data2)
		local info = data.metadata or data.info or data2.metadata or data2.info
		if info and info.identifier then
			TriggerClientEvent('ak47_qb_idcardv2:useid', source, i, info)
		else
			print("^1Card data missing. Make sure you didn't spawn this item manually!\n^3Use command /giveid^0")
		end
	end)
end