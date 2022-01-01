local rich_autoplace = data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"]["autoplace_controls"]
local rail_autoplace = data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"]["autoplace_controls"]
local ribb_autoplace = data.raw["map-gen-presets"]["default"]["ribbon-world"]["basic_settings"]["autoplace_controls"]

-- ores
for _,resource in ipairs({
  -- pyrawores 2.2.7
  "aluminium-rock",
  "ore-aluminium",
  "chromium-rock",
  "ore-chromium",
  "coal-rock",
  "copper-rock",
  "iron-rock",
  "lead-rock",
  "ore-lead",
  "nexelit-rock",
  "nickel-rock",
  "ore-nickel",
  "phosphate-rock-02",
  "quartz-rock",
  "ore-quartz",
  "raw-coal",
  "salt-rock",
  "tin-rock",
  "ore-tin",
  "titanium-rock",
  "ore-titanium",
  "uranium-rock",
  "zinc-rock",
  "ore-zinc",
  -- pycoalprocessing 1.9.3
  "borax",
  "niobium",
  -- angelsrefining
  -- all good as of 2021-12-31
  -- angelspetrochem
  -- all good as of 2021-12-31
  -- Clowns-Extended-Minerals
  -- all good as of 2021-12-31
}) do
  if data.raw["autoplace-control"][resource] then
    rich_autoplace[resource] = { richness = 2.0 }
    rail_autoplace[resource] = { frequency = 0.33, size = 3.0 }
    ribb_autoplace[resource] = { frequency = 3.0, size = 0.5, richness = 2.0 }
  end
end
