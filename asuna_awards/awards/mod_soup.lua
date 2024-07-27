return function(award)
  -- Process all soup items
  local goals = { target = 1 }
  for _,item in ipairs({
    "soup:tomato_soup",
    "soup:mushroom_soup",
    "soup:chicken_noodle_soup",
    "x_farming:beetroot_soup",
    "farming:pea_soup",
  }) do
    table.insert(goals,{
      description = "Cook " .. minetest.registered_items[item].description,
      trigger = {
        type = "craft",
        target = 1,
        item = item,
      },
    })
  end

  -- Add triggers to award
  return {
    title = "Mod Soup",
    description = "Cook any soup",
    difficulty = 35,
    icon = "chicken_noodle_soup.png",
    goals = goals,
  }
end