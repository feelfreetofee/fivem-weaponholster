local weaponData = { -- Thanks to https://github.com/itzhapp/ShowWeapon
	back = {
		list = {
			['WEAPON_ADVANCEDRIFLE']		= {model = 'w_ar_advancedrifle'		},
			['WEAPON_ASSAULTRIFLE']			= {model = 'w_ar_assaultrifle'		},
			['WEAPON_ASSAULTSHOTGUN']		= {model = 'w_sg_assaultshotgun'	},
			['WEAPON_ASSAULTSMG']			= {model = 'w_sb_assaultsmg'		},
			['WEAPON_BULLPUPRIFLE_MK2']		= {model = 'w_ar_bullpupriflemk2'	},
			['WEAPON_BULLPUPRIFLE']			= {model = 'w_ar_bullpuprifle'		},
			['WEAPON_BULLPUPSHOTGUN']		= {model = 'w_sg_bullpupshotgun'	},
			['WEAPON_CARBINERIFLE_MK2']		= {model = 'w_ar_carbineriflemk2'	},
			['WEAPON_CARBINERIFLE']			= {model = 'w_ar_carbinerifle'		},
			['WEAPON_COMBATPDW'] 			= {model = 'w_sb_smg'			},
			['WEAPON_COMBATSHOTGUN']		= {model = 'w_sg_pumpshotgun'		},
			['WEAPON_COMPACTRIFLE']			= {model = 'w_ar_assaultrifle'		},
			['WEAPON_DBSHOTGUN']			= {model = 'w_sg_sawnoff'		},
			['WEAPON_FIREWORK']			= {model = 'w_lr_firework'		},
			['WEAPON_GUSENBERG']			= {model = 'w_sb_gusenberg'		},
			['WEAPON_HEAVYSHOTGUN']			= {model = 'w_sg_heavyshotgun'		},
			['WEAPON_HEAVYSNIPER_MK2']		= {model = 'w_sr_heavysnipermk2'	},
			['WEAPON_HEAVYSNIPER']			= {model = 'w_sr_heavysniper'		},
			['WEAPON_MARKSMANRIFLE']		= {model = 'w_sr_marksmanrifle'		},
			['WEAPON_MARKSMANRIFLE_MK2']		= {model = 'w_sr_marksmanriflemk2'	},
			['WEAPON_MG']				= {model = 'w_mg_mg'			},
			['WEAPON_MILITARYRIFLE']		= {model = 'w_sr_marksmanriflemk2'	},
			['WEAPON_MUSKET']			= {model = 'w_ar_musket'		},
			['WEAPON_MICROSMG'] 			= {model = 'w_sb_microsmg'		},
			['WEAPON_PUMPSHOTGUN_MK2']		= {model = 'w_sg_pumpshotgunmk2'	},
			['WEAPON_PUMPSHOTGUN']			= {model = 'w_sg_pumpshotgun'		},
			['WEAPON_SAWNOFFSHOTGUN']		= {model = 'w_sg_sawnoff'		},
			['WEAPON_SMG_MK2']			= {model = 'w_sb_smgmk2'		},
			['WEAPON_SMG']				= {model = 'w_sb_smg'			},
			['WEAPON_SNIPERRIFLE']			= {model = 'w_sr_sniperrifle'		},
			['WEAPON_SPECIALCARBINE_MK2']		= {model = 'w_ar_specialcarbinemk2'	},
			['WEAPON_SPECIALCARBINE']     		= {model = 'w_ar_specialcarbine'	},
			['WEAPON_SWEEPERSHOTGUN']    		= {model = 'w_sg_sweeper'		},
			['WEAPON_COMBATMG']     	 	= {model = 'w_mg_combatmg'		},
			['WEAPON_COMBATMG_MK2']       		= {model = 'w_mg_combatmgmk2'		},
		},
		coords = {
			pos = vector3(0.3, -0.15, 0.05),
			rot = vector3(0.0, 0.0, 0.0)
		}
	},
	front = {
		list = {
			['WEAPON_ASSAULTRIFLE_MK2']		= {model = 'w_ar_assaultriflemk2'	},
		},
		coords = {
			pos = vector3(0.2, 0.20, -0.1),
			rot = vector3(180.0, 220.0, 0.0)
		}
	},
	left = {
		list = {
			['WEAPON_NIGHTSTICK']		= {model = 'w_me_nightstick'	},
			['WEAPON_MACHETE']		= {model = 'prop_ld_w_me_machette'	},
			-- ['WEAPON_CROWBAR']		= {model = 'w_me_crowbar'	},
		},
		coords = {
			pos = vector3(0.0, 0.0, 0.225),
			rot = vector3(0.0, -90.0, 90.0)
		}
	}
}

local weaponHolstered = {
	['back'] = {name = nil, object = nil},
	['front'] = {name = nil, object = nil},
	['left'] = {name = nil, object = nil}
}
local weaponEquipped = {name = nil, object = nil}

AddEventHandler('playerDropped', function() -- onResourceStop
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

					AttachEntityToEntity(weaponHolstered[k].object, playerPed, GetPedBoneIndex(playerPed, 24816), weaponData[k].coords.pos, weaponData[k].coords.rot, true, true, false, false, 1, true)
					
					SetModelAsNoLongerNeeded(model)
				end
			end
		end
	else
		weaponEquipped.name = currentWeapon.name
		if currentWeapon then
			for k in pairs(weaponData) do
				if currentWeapon.name == weaponHolstered[k].name then
					DeleteObject(weaponHolstered[k].object)
					weaponHolstered[k].name = nil
					weaponHolstered[k].object = nil
				end
			end
		end
	end
end)
