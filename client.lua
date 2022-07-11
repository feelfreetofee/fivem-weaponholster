local weaponData = { -- Thanks to https://github.com/itzhapp/ShowWeapon
	back = {
		list = {
			['WEAPON_ADVANCEDRIFLE']		= {model = 'w_ar_advancedrifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_ASSAULTRIFLE']			= {model = 'w_ar_assaultrifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_ASSAULTRIFLE_MK2']		= {model = 'w_ar_assaultriflemk2', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_ASSAULTSMG']			= {model = 'w_sb_assaultsmg', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_BULLPUPRIFLE_MK2']		= {model = 'w_ar_bullpupriflemk2', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_BULLPUPRIFLE']			= {model = 'w_ar_bullpuprifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_CARBINERIFLE_MK2']		= {model = 'w_ar_carbineriflemk2', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_CARBINERIFLE']			= {model = 'w_ar_carbinerifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_COMBATPDW'] 			= {model = 'w_sb_smg', 			pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_COMPACTRIFLE']			= {model = 'w_ar_assaultrifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_FIREWORK']			= {model = 'w_lr_firework', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_GUSENBERG']			= {model = 'w_sb_gusenberg', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_HEAVYSNIPER_MK2']		= {model = 'w_sr_heavysnipermk2', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_HEAVYSNIPER']			= {model = 'w_sr_heavysniper', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MARKSMANRIFLE']		= {model = 'w_sr_marksmanrifle', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MARKSMANRIFLE_MK2']		= {model = 'w_sr_marksmanriflemk2',	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MG']				= {model = 'w_mg_mg', 			pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MILITARYRIFLE']		= {model = 'w_sr_marksmanriflemk2',	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MUSKET']			= {model = 'w_ar_musket',		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MICROSMG'] 			= {model = 'w_sb_microsmg', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SMG_MK2']			= {model = 'w_sb_smgmk2',		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SMG']				= {model = 'w_sb_smg',			pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SNIPERRIFLE']			= {model = 'w_sr_sniperrifle', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SPECIALCARBINE_MK2']		= {model = 'w_ar_specialcarbinemk2',	pos = vector3(0.0, 0.0, 0.0),	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SPECIALCARBINE']     		= {model = 'w_ar_specialcarbine', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_COMBATMG']     	 	= {model = 'w_mg_combatmg', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_COMBATMG_MK2']       		= {model = 'w_mg_combatmgmk2', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
		},
		coords = {
			pos = vector3(0.3, -0.15, 0.05),
			rot = vector3(0.0, 0.0, 0.0),
			bone = 24816
		}
	},
	front = {
		list = {
			['WEAPON_ASSAULTSHOTGUN']		= {model = 'w_sg_assaultshotgun', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_BULLPUPSHOTGUN']		= {model = 'w_sg_bullpupshotgun', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_COMBATSHOTGUN']		= {model = 'w_sg_pumpshotgun', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_DBSHOTGUN']			= {model = 'w_sg_sawnoff', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_HEAVYSHOTGUN']			= {model = 'w_sg_heavyshotgun', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_PUMPSHOTGUN_MK2']		= {model = 'w_sg_pumpshotgunmk2', 	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_PUMPSHOTGUN']			= {model = 'w_sg_pumpshotgun', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SAWNOFFSHOTGUN']		= {model = 'w_sg_sawnoff', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SWEEPERSHOTGUN']    		= {model = 'w_sg_sweeper', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
		},
		coords = {
			pos = vector3(0.2, 0.20, -0.1),
			rot = vector3(180.0, 220.0, 0.0),
			bone = 24816
		}
	},
	left = {
		list = {
			['WEAPON_DAGGER']			= {model = 'w_me_dagger', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_BOTTLE']			= {model = 'w_me_bottle', 		pos = vector3(0.0, 0.05, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_CROWBAR']			= {model = 'w_me_crowbar', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_HAMMER']			= {model = 'w_me_hammer', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_HATCHET']			= {model = 'w_me_hatchet', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_KNIFE']			= {model = 'w_me_knife_01', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_MACHETE']			= {model = 'prop_ld_w_me_machette',	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_SWITCHBLADE']			= {model = 'prop_w_me_knife_01',	pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_NIGHTSTICK']			= {model = 'w_me_nightstick', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_BATTLEAXE']			= {model = 'w_me_hatchet',		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_STONE_HATCHET']		= {model = 'w_me_hatchet', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
			['WEAPON_WRENCH']			= {model = 'prop_tool_wrench', 		pos = vector3(0.0, 0.0, 0.0), 	rot = vector3(0.0, 0.0, 0.0)},
		},
		coords = {
			pos = vector3(0.05, 0.0, 0.20),
			rot = vector3(7.0, -90.0, 70.0),
			bone = 57597
		}
	},
}

AddEventHandler('playerDropped', function() -- onResourceStop
	clearProps()
end)

function clearProps()
	for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
	end
end

local weaponHolstered = {
	['back'] = {name = nil, object = nil},
	['front'] = {name = nil, object = nil},
	['left'] = {name = nil, object = nil}
}
local weaponEquipped = {name = nil, object = nil}

AddEventHandler('ox_inventory:currentWeapon',function(currentWeapon)
	local playerPed = PlayerPedId()
	if not currentWeapon then 
		if weaponEquipped and weaponEquipped.name then
			for k in pairs(weaponData) do
				if weaponData[k].list[weaponEquipped and weaponEquipped.name] then
					local model = weaponData[k].list[weaponEquipped.name].model

					while not HasModelLoaded(model) do
						RequestModel(model)
						Wait(0)
					end

					if weaponHolstered[k].object then DeleteObject(weaponHolstered[k].object) end

					weaponHolstered[k].name = weaponEquipped.name
					weaponHolstered[k].object = CreateObject(model, 0, 0, 0, true, true, true)
					
					local bone = weaponData[k].coords.bone
					local pos = weaponData[k].coords.pos - weaponData[k].list[weaponEquipped.name].pos
					local rot = weaponData[k].coords.rot - weaponData[k].list[weaponEquipped.name].rot
					
					AttachEntityToEntity(weaponHolstered[k].object, playerPed, GetPedBoneIndex(playerPed, bone), pos, rot, true, true, false, false, 1, true)
					
					SetModelAsNoLongerNeeded(model)
				end
			end
		end
	else
        	weaponEquipped.name = currentWeapon.name
		for k in pairs(weaponData) do
			if currentWeapon.name == weaponHolstered[k].name then
				DeleteObject(weaponHolstered[k].object)
				weaponHolstered[k].name = nil
				weaponHolstered[k].object = nil
			end
		end
	end
end)
