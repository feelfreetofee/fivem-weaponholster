fx_version 'cerulean'
game 'gta5'

author 'VIRUXE'
description 'Attaches weapons to the torso or back of a players Ped (using ox_inventory)'

client_script {'client.lua', '@es_extended/imports.lua'}

files {
  'mp_m_freemode_01_mp_m_zurbanwar.meta',
  'mp_f_freemode_01_mp_f_zurbanwar.meta'
}

data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_m_freemode_01_mp_m_zurbanwar.meta'
data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_f_freemode_01_mp_f_zurbanwar.meta'

dependency 'ox_inventory'
