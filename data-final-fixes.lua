local rich_autoplace = data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"]["autoplace_controls"]
local rail_autoplace = data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"]["autoplace_controls"]

-- ores
for _,resource in ipairs({
  "angels-ore5","angels-ore6", -- angelsrefining
  "clowns-ore1","clowns-ore2","clowns-ore3","clowns-ore4","clowns-ore5","clowns-ore6","clowns-ore7" -- Clowns-Extended-Minerals
}) do
  if data.raw["autoplace-control"][resource] then
    -- if not rich_autoplace[resource] then
      rich_autoplace[resource] = { richness = "very-good" }
    -- end
    -- if not rail_autoplace[resource] then
      rail_autoplace[resource] = { frequency = "very-low", size = "high" }
    -- end
  end
end

-- fluids
for _,resource in ipairs({
  "angels-natural-gas", -- angelspetrochem
  "clowns-resource1","clowns-resource2" -- Clowns-Extended-Minerals
}) do
  if data.raw["autoplace-control"][resource] then
    -- if not rich_autoplace[resource] then
      rich_autoplace[resource] = { richness = "very-good" }
    -- end
    -- if not rail_autoplace[resource] then
      rail_autoplace[resource] = { frequency = "low", size = "high" }
    -- end
  end
end