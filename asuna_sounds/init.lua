local function override_sounds(node_name, new_sounds)
    local def = minetest.registered_nodes[node_name]
    if not def then return end
    
    local sounds = table.copy(def.sounds or {})
    for k, v in pairs(new_sounds) do
        sounds[k] = v
    end
    
    minetest.override_item(node_name, {sounds = sounds})
end

minetest.after(0, function()
    for name, def in pairs(minetest.registered_nodes) do
        if name:find("wood") or name:find("tree") or name:find("trunk") then
            override_sounds(name, {
                dig={name="everness_dig_wood", gain=0.7},
                dug = {name = "asuna_dug_wood", gain = 0.8},
                footstep={name="asuna_step_wood", gain=0.6},
            })
        end
        if name:find("grass") then
            override_sounds(name,{
              dig={name="asuna_dig_grass",gain=0.8}
            })
        end
        if name:find("leave") or name:find("needle") then
          override_sounds(name,{
            dig={name="asuna_dig_leaves",gain=0.8}
          })
        end
        if name:find("bush") then
          override_sounds(name,{
            dig={name="asuna_dig_bush",gain=0.8}
          })
        end
    end
end)