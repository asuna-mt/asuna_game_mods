-- Globals
asuna_awards = {
  awards = {},
}

-- Load awards after other mods are loaded
minetest.register_on_mods_loaded(function()
  local mpath = minetest.get_modpath("asuna_awards")
  dofile(mpath .. "/register_on_interval.lua")
  local awards_path = mpath .. "/awards/"
  local award_files = minetest.get_dir_list(awards_path,false)
  for i = 1, #award_files do
    local file = award_files[i]
    local award_name = "asuna_awards:" .. file:sub(1,-5)
    local implementation = dofile(awards_path .. file)
    local award_definition = implementation(award_name)
    asuna_awards.awards[award_name] = award_definition
    awards.register_award(award_name,award_definition)
  end
end)