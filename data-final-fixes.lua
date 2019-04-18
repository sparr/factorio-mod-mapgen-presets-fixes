local rich_autoplace = data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"]["autoplace_controls"]
local rail_autoplace = data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"]["autoplace_controls"]
local ribb_autoplace = data.raw["map-gen-presets"]["default"]["ribbon-world"]["basic_settings"]["autoplace_controls"]

-- ores
for _,resource in ipairs({
  -- angelsrefining
  "angels-ore5",
  "angels-ore6",
  -- angelspetrochem
  "angels-natural-gas",
  -- Clowns-Extended-Minerals
  "clowns-ore1",
  "clowns-ore2",
  "clowns-ore3",
  "clowns-ore4",
  "clowns-ore5",
  "clowns-ore6",
  "clowns-ore7",
  "clowns-resource1",
  "clowns-resource2",
  -- Angels' seems to intentionally not scale up infinite ores, so we don't do it here
  -- "infinite-clowns-ore1",
  -- "infinite-clowns-ore2",
  -- "infinite-clowns-ore3",
  -- "infinite-clowns-ore4",
  -- "infinite-clowns-ore5",
  -- "infinite-clowns-ore6",
  -- "infinite-clowns-ore7",
  -- "infinite-clowns-resource1",
  -- "infinite-clowns-resource2",
}) do
  if data.raw["autoplace-control"][resource] then
    rich_autoplace[resource] = { richness = 2.0 }
    rail_autoplace[resource] = { frequency = 0.33, size = 3.0 }
    ribb_autoplace[resource] = { frequency = 3.0, size = 0.5, richness = 2.0 }
  end
end
