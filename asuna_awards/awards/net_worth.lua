return function(award)
  local ogbnou = minetest.registered_tools["fireflies:bug_net"].on_use
  minetest.override_item("fireflies:bug_net",{
    on_use = function(itemstack, player, pointed_thing)
      local was_firefly = pointed_thing.type == "node" and (minetest.get_node(pointed_thing.under).name == "fireflies:firefly") or false
      local retval = ogbnou(itemstack, player, pointed_thing)
      if was_firefly and not minetest.get_node(pointed_thing.under).name:find("^fireflies:") then
        awards.unlock(player:get_player_name(),award)
      end
      return retval
    end,
  })

  return {
    title = "Net Worth",
    description = "Catch a firefly using a bug net",
    difficulty = 55,
    icon = "fireflies_bugnet.png",
  }
end