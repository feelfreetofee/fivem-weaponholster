local weaponData =
{ -- Thanks to https://github.com/itzhapp/ShowWeapon
    ['WEAPON_ADVANCEDRIFLE']      = {model = 'w_ar_advancedrifle',      onBack = true},
    -- ['WEAPON_ASSAULTRIFLE_MK2']   = {model = 'w_ar_assaultriflemk2',    onBack = true},
    ['WEAPON_ASSAULTRIFLE']       = {model = 'w_ar_assaultrifle',       onBack = true},
    ['WEAPON_ASSAULTSHOTGUN']     = {model = 'w_sg_assaultshotgun',     onBack = true},
    ['WEAPON_ASSAULTSMG']         = {model = 'w_sb_assaultsmg',         onBack = true},
    ['WEAPON_BULLPUPRIFLE_MK2']   = {model = 'w_ar_bullpupriflemk2',    onBack = true},
    ['WEAPON_BULLPUPRIFLE']       = {model = 'w_ar_bullpuprifle',       onBack = true},
    ['WEAPON_BULLPUPSHOTGUN']     = {model = 'w_sg_bullpupshotgun',     onBack = true},
    ['WEAPON_CARBINERIFLE_MK2']   = {model = 'w_ar_carbineriflemk2',    onBack = true},
    ['WEAPON_CARBINERIFLE']       = {model = 'w_ar_carbinerifle',     	onBack = true},
    ['WEAPON_COMBATPDW']          = {model = 'w_sb_smg',                onBack = true},
    ['WEAPON_COMBATSHOTGUN']      = {model = 'w_sg_pumpshotgun',        onBack = true},
    ['WEAPON_COMPACTRIFLE']       = {model = 'w_ar_assaultrifle',       onBack = true},
    ['WEAPON_DBSHOTGUN']          = {model = 'w_sg_sawnoff',            onBack = true},
    ['WEAPON_FIREWORK']           = {model = 'w_lr_firework',           onBack = true},
    ['WEAPON_GUSENBERG']          = {model = 'w_sb_gusenberg',          onBack = true},
    ['WEAPON_HEAVYSHOTGUN']       = {model = 'w_sg_heavyshotgun',       onBack = true},
    ['WEAPON_HEAVYSNIPER_MK2']    = {model = 'w_sr_heavysnipermk2',     onBack = true},
    ['WEAPON_HEAVYSNIPER']        = {model = 'w_sr_heavysniper',        onBack = true},
    ['WEAPON_MARKSMANRIFLE']      = {model = 'w_sr_marksmanrifle',      onBack = true},
    ['WEAPON_MARKSMANRIFLE_MK2']  = {model = 'w_sr_marksmanriflemk2',   onBack = true},
    ['WEAPON_MG']                 = {model = 'w_mg_mg',                 onBack = true},
    ['WEAPON_MILITARYRIFLE']      = {model = 'w_sr_marksmanriflemk2',   onBack = true},
    ['WEAPON_MUSKET']             = {model = 'w_ar_musket',             onBack = true},
    ['WEAPON_MICROSMG']           = {model = 'w_sb_microsmg',           onBack = true},
    ['WEAPON_PUMPSHOTGUN_MK2']    = {model = 'w_sg_pumpshotgunmk2',     onBack = true},
    ['WEAPON_PUMPSHOTGUN']        = {model = 'w_sg_pumpshotgun',        onBack = true},
    ['WEAPON_SAWNOFFSHOTGUN']     = {model = 'w_sg_sawnoff',            onBack = true},
    ['WEAPON_SMG_MK2']            = {model = 'w_sb_smgmk2',             onBack = true},
    ['WEAPON_SMG']                = {model = 'w_sb_smg',                onBack = true},
    ['WEAPON_SNIPERRIFLE']        = {model = 'w_sr_sniperrifle',        onBack = true},
    ['WEAPON_SPECIALCARBINE_MK2'] = {model = 'w_ar_specialcarbinemk2',  onBack = true},
    ['WEAPON_SPECIALCARBINE']     = {model = 'w_ar_specialcarbine',     onBack = true},
    ['WEAPON_SWEEPERSHOTGUN']     = {model = 'w_sg_sweeper',            onBack = true},
    ['WEAPON_COMBATMG']     	  = {model = 'w_mg_combatmg',     		onBack = true},
    ['WEAPON_COMBATMG_MK2']       = {model = 'w_mg_combatmgmk2',        onBack = true}
}

local weaponData2 =
{
    ['WEAPON_ASSAULTRIFLE_MK2']   = {model = 'w_ar_assaultriflemk2',    onBack = true}
}

local weaponHolstered = {name = nil, object = nil}
local weaponHolstered2 = {name = nil, object = nil}
local weaponEquipped = {name = nil, object = nil}

AddEventHandler('onResourceStop', function() -- playerDropped
    -- DeleteObject(weaponholstered.object)

	for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
	end
end)

AddEventHandler('ox_inventory:currentWeapon',function(currentWeapon)
    local playerPed = PlayerPedId()
    if not currentWeapon then 
        if weaponEquipped and weaponEquipped.name then
            if weaponData[weaponEquipped and weaponEquipped.name] then
				local model = weaponData[weaponEquipped.name].model

				while not HasModelLoaded(model) do
					RequestModel(model)
					Wait(0)
				end

				if weaponHolstered.object then DeleteObject(weaponHolstered.object) end
	
                weaponHolstered.name = weaponEquipped.name
                weaponHolstered.object = CreateObject(model, 0, 0, 0, true, true, true)


                AttachEntityToEntity(weaponHolstered.object, playerPed, GetPedBoneIndex(playerPed, 24816), weaponData[weaponEquipped.name].onBack and 0.3 or 0.2, weaponData[weaponEquipped.name].onBack and -0.15 or 0.20, weaponData[weaponEquipped.name].onBack and 0.05 or -0.1, weaponData[weaponEquipped.name].onBack and 0.0 or 180.0, weaponData[weaponEquipped.name].onBack and 0.0 or 220.0, 0.0, true, true, false, false, 1, true)
			elseif weaponData2[weaponEquipped and weaponEquipped.name] then
				local model = weaponData2[weaponEquipped.name].model

				while not HasModelLoaded(model) do
					RequestModel(model)
					Wait(0)
				end
				if weaponHolstered2.object then DeleteObject(weaponHolstered2.object) end
	
                weaponHolstered2.name = weaponEquipped.name
                weaponHolstered2.object = CreateObject(model, 0, 0, 0, true, true, true)


                AttachEntityToEntity(weaponHolstered2.object, playerPed, GetPedBoneIndex(playerPed, 24816), 0.2, 0.20, -0.1, 180.0, 220.0, 0.0, true, true, false, false, 1, true)

			end

			SetModelAsNoLongerNeeded(model)
        end
    else
        weaponEquipped.name = currentWeapon.name
		if currentWeapon then
			if currentWeapon.name == weaponHolstered.name then
				DeleteObject(weaponHolstered.object)
				weaponHolstered.name = nil
				weaponHolstered.object = nil
			elseif currentWeapon.name == weaponHolstered2.name then
				DeleteObject(weaponHolstered2.object)
				weaponHolstered2.name = nil
				weaponHolstered2.object = nil
			end
		end
    end
end)
