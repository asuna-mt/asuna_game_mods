-- The better_farming mod was removed in favor of Farming Redo and X Farming,
-- and to avoid unknown nodes in existing worlds, the better_farming nodes are
-- aliased here.

for old,new in pairs({
  adzuki = "x_farming:soybean",
  agave = "air",
  aloe = "air",
  asparagus = "air",
  beetroot = "x_farming:beetroot",
  bokchoy = "x_farming:soybean",
  cabbage = "farming:cabbage",
  carrot = "x_farming:carrot",
  cassava = "x_farming:coffee",
  chilie = "farming:chili",
  corn = "x_farming:corn",
  cucumber = "farming:cucumber",
  eggplants = "farming:eggplant",
  ginger = "farming:ginger",
  jute = "air",
  kale = "farming:cabbage",
  medicinal_plant = "air",
  millet = "air",
  mint = "farming:mint",
  onion = "farming:onion",
  pepper = "farming:pepper",
  potato = "x_farming:potato",
  rice = "farming:rice",
  sisal = "air",
  spiceleaf = "stevia",
  spinach = "farming:spinach",
  strawberry = "x_farming:strawberry",
  tomatoes = "farming:tomato",
  yucca = "air",
}) do
  for i = 1, 8 do
    minetest.register_alias("better_farming:" .. old .. "_" .. i,new == "air" and new or (new .. "_" .. i))
  end
end

-- Alias Plantlife sunflowers to Farming Redo sunflowers
minetest.register_alias("flowers:sunflower","farming:sunflower_8")
minetest.register_alias("sunflower:sunflower","farming:sunflower_8")

-- Alias Plantlife bushes to default bushes
minetest.register_alias("bushes:bushbranches1","default:bush_stem")
minetest.register_alias("bushes:bushbranches2","default:bush_stem")
minetest.register_alias("bushes:bushbranches3","default:bush_stem")
minetest.register_alias("bushes:bushbranches4","default:bush_stem")
minetest.register_alias("bushes:BushLeaves1","default:bush_leaves")
minetest.register_alias("bushes:BushLeaves2","default:bush_leaves")
minetest.register_alias("bushes:youngtree2_bottom","air")

-- Alias Plantlife young trees to air
minetest.register_alias("youngtrees:bamboo","air")
minetest.register_alias("youngtrees:youngtree_top","air")
minetest.register_alias("youngtrees:youngtree_middle","air")
minetest.register_alias("youngtrees:youngtree_bottom","air")

-- Aliases for removed biomes/bambooforest nodes
minetest.register_alias("bambooforest:bamboo","everness:bamboo_1")
minetest.register_alias("bambooforest:bamboo_wood","everness:bamboo_wood")
minetest.register_alias("bambooforest:bamboo_block","everness:bamboo_block")
minetest.register_alias("bambooforest:dirt_with_bamboo","default:dirt_with_rainforest_litter")
minetest.register_alias("bambooforest:granite","too_many_stones:granite_gray")
minetest.register_alias("bambooforest:granite_block","too_many_stones:granite_gray_block")
minetest.register_alias("bambooforest:granite_brick","too_many_stones:granite_gray_brick")
minetest.register_alias("walls:granite_brick","too_many_stones:granite_gray_wall")
minetest.register_alias("bambooforest:melon","x_farming:melon_fruit")
minetest.register_alias("bambooforest:bamboo_trapdoor","everness:trapdoor_bamboo")
minetest.register_alias("bambooforest:fence_bamboo_wood","everness:fence_bamboo_wood")
minetest.register_alias("bambooforest:fence_rail_bamboo_wood","everness:fence_rail_bamboo_wood")