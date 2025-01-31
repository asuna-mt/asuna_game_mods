asuna = {
  modpath = core.get_modpath("asuna_core"),
  content = {
    nutrition = {
      enabled = core.settings:get_bool("asuna.content.nutrition.enabled",true),
      exhaustion_level = core.settings:get_bool("asuna.content.nutrition.enabled",true) and tonumber(core.settings:get("asuna.content.nutrition.exhaustion_level",160) or 160),
      starvation = core.settings:get_bool("asuna.content.nutrition.enabled",true) and core.settings:get_bool("asuna.content.nutrition.starvation",false),
    },
    wayfarer = {
      enabled = core.settings:get_bool("asuna.content.wayfarer.enabled",true),
      awards = core.settings:get_bool("asuna.content.wayfarer.enabled",true) and core.settings:get_bool("asuna.content.wayfarer.awards",true),
      loot_chests = core.settings:get_bool("asuna.content.wayfarer.enabled",true) and core.settings:get_bool("asuna.content.wayfarer.loot_chests",true),
      worldgate = core.settings:get_bool("asuna.content.wayfarer.enabled",true) and core.settings:get_bool("asuna.content.wayfarer.worldgate",true),
    },
    menagerie = {
      enabled = core.settings:get_bool("asuna.content.menagerie.enabled",true),
      animals = core.settings:get_bool("asuna.content.menagerie.enabled",true) and core.settings:get_bool("asuna.content.menagerie.animals",true),
      slimes = core.settings:get_bool("asuna.content.menagerie.enabled",true) and core.settings:get_bool("asuna.content.menagerie.slimes",true),
    },
    research = {
      enabled = core.settings:get_bool("asuna.content.research.enabled",true),
    },
  },
  settings = {
    particles = {
      amount = core.settings:get("asuna.settings.particles.amount","less") or "less",
    },
    mod_override_warnings = {
      enabled = core.settings:get_bool("asuna.settings.mod_override_warnings.enabled",true),
    },
  },
}

local function runfile(file,condition)
  if condition == nil or condition then
    dofile(asuna.modpath .. "/" .. file .. ".lua")
  end
end

runfile("biomes")
runfile("terrain")
runfile("climate")
runfile("caves")
runfile("decor")
runfile("music")
runfile("mod_override_warnings",asuna.settings.mod_override_warnings.enabled)