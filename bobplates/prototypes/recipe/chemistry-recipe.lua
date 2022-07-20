if settings.startup["bobmods-plates-groundwater"].value == true then
  data:extend(
  {
    {
      type = "recipe",
      name = "lithia-water",
      icon = "__bobplates__/graphics/icons/lithia-water.png",
      icon_size = 32,
      subgroup = "bob-fluid-pump",
      order = "b[fluid-chemistry]-b[lithia-water]",
      category = "water-pump",
      energy_required = 1,
      ingredients =
      {
      },
      results = 
      {
        {type = "fluid", name = "lithia-water", amount = 100}
      },
      allow_decomposition = false
    },

    {
      type = "recipe",
      name = "ground-water",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fluid-pump",
      order = "b[fluid-chemistry]-b[water]",
      category = "water-pump",
      energy_required = 1,
      ingredients =
      {
      },
      results = 
      {
        {type = "fluid", name = "water", amount = 100}
      },
      allow_decomposition = false
    },
  }
  )

  if settings.startup["bobmods-plates-purewater"].value == true then
    data:extend(
    {
      {
        type = "recipe",
        name = "pure-water-pump",
        icon = "__bobplates__/graphics/icons/pure-water.png",
        icon_size = 64,
        subgroup = "bob-fluid-pump",
        order = "b[fluid-chemistry]-b[pure-water]",
        category = "water-pump",
        energy_required = 1,
        ingredients =
        {
        },
        results = 
        {
          {type = "fluid", name = "pure-water", amount = 100}
        },
        allow_decomposition = false
      },
    }
    )
  end
end


if settings.startup["bobmods-plates-purewater"].value == true then
  data:extend(
  {
    {
      type = "recipe",
      name = "pure-water",
      icon = "__bobplates__/graphics/icons/pure-water.png",
      icon_size = 64,
      subgroup = "bob-fluid",
      order = "b[fluid-chemistry]-b[pure-water-1]",
      category = "distillery",
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {type = "fluid", name = "water", amount = 100},
      },
      results =
      {
        {type = "fluid", name = "pure-water", amount = 100},
      },
      crafting_machine_tint =
      {
        primary = {r=0, g=0.34, b=0.6, a = 0.000},
        secondary = {r=0.3, g=0.6, b=0.8, a = 0.000},
        tertiary = {r=0.7, g=0.7, b=0.7, a = 0.000},
      },
      allow_decomposition = false
    },
    {
      type = "recipe",
      name = "pure-water-from-lithia",
      icon = "__bobplates__/graphics/icons/pure-water.png",
      icon_size = 64,
      subgroup = "bob-fluid",
      order = "b[fluid-chemistry]-b[pure-water-2]",
      category = "distillery",
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {type = "fluid", name = "lithia-water", amount = 100},
      },
      results =
      {
        {type = "fluid", name = "pure-water", amount = 100},
      },
      crafting_machine_tint =
      {
        primary = {r=0, g=0.34, b=0.6, a = 0.000},
        secondary = {r=0.3, g=0.6, b=0.8, a = 0.000},
        tertiary = {r=0.7, g=1.0, b=1.0, a = 0.000},
      },
      allow_decomposition = false
    }
  }
  )
end


data:extend(
{
  {
    type = "recipe",
    name = "bob-liquid-air",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    subgroup = "bob-fluid-pump",
    order = "b[fluid-chemistry]-b[liquid-air]",
    category = "air-pump",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
    },
    results = 
    {
      {type = "fluid", name = "liquid-air", amount = 100}
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "water-electrolysis",
    icon = "__bobplates__/graphics/icons/water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[water-electrolysis]",
    category = "electrolysis",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "hydrogen", amount = 20},
      {type = "fluid", name = "oxygen", amount = 12.5}
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "nitrogen",
    icon = "__bobplates__/graphics/icons/nitrogen.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[nitrogen]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "liquid-air", amount = 25}
    },
    results =
    {
      {type = "fluid", name = "nitrogen", amount = 20},
      {type = "fluid", name = "oxygen", amount = 5}
    },
    main_product = "nitrogen",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.8, b = 0.0, a = 0.000},
      secondary = {r = 0.5, g = 1.0, b = 0.5, a = 0.000},
      tertiary = {r = 0.25, g = 0.5, b = 0.25, a = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "salt-water-electrolysis",
    icon = "__bobplates__/graphics/icons/salt-water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[salt-water-electrolysis]",
    category = "electrolysis",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type = "item", name = "salt", amount = 1},
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "item", name = "sodium-hydroxide", amount = 1},
      {type = "fluid", name = "chlorine", amount = 25},
      {type = "fluid", name = "hydrogen", amount = 20},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "lithium-water-electrolysis",
    icon = "__bobplates__/graphics/icons/lithium-perchlorate.png",
    icon_size = 32,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[lithium-water-electrolysis]",
    category = "electrolysis",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "lithium-chloride", amount = 1},
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "item", name = "lithium-perchlorate", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 20},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "nitrogen-dioxide",
    icon = "__bobplates__/graphics/icons/nitrogen-dioxide.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[nitrogen-dioxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "nitrogen", amount = 10},
      {type = "fluid", name = "oxygen", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 20},
    },
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.8, g = 0.0, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "hydrogen-chloride",
    icon = "__bobplates__/graphics/icons/hydrogen-chloride.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[hydrogen-chloride]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="chlorine", amount=12.5},
      {type="fluid", name="hydrogen", amount=10},
    },
    results=
    {
      {type="fluid", name="hydrogen-chloride", amount=25}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.7, b = 0.2, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.2, g = 0.7, b = 0.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "nitric-acid",
    icon = "__bobplates__/graphics/icons/nitric-acid.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[nitric-acid]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water", amount=10},
      {type="fluid", name="nitrogen-dioxide", amount=20},
    },
    results=
    {
      {type="fluid", name="nitric-acid", amount=20},
    },
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.0, b = 0.7, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "tungstic-acid",
    icon = "__bobplates__/graphics/icons/tungstic-acid.png",
    icon_size = 32,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[tungstic-acid]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="tungsten-ore", amount=2},
      {type="fluid", name="hydrogen-chloride", amount=25}
    },
    results=
    {
      {type="fluid", name="tungstic-acid", amount=20},
      {type="item", name="calcium-chloride", amount=1}
    },
    main_product= "tungstic-acid",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.2, b = 0.7, a = 0.000},
      secondary = {r = 0.0, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.0, g = 0.0, b = 0.7, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "ferric-chloride-solution",
    icon = "__bobplates__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-a[ferric-chloride-solution]",
    category = "chemistry",
    enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=30},
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=50}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.6, b = 0.2, a = 0.000},
      secondary = {r = 0.2, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.7, b = 0.7, a = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "liquid-fuel",
    icon = "__bobplates__/graphics/icons/liquid-fuel.png",
    icon_size = 32,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[liquid-fuel]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "light-oil", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "liquid-fuel", amount = 10}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.9, b = 0.5, a = 0.000},
      secondary = {r = 0.8, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.9, g = 0.8, b = 0.25, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "sulfuric-acid-2",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 50},
      {type = "fluid", name = "sulfur-dioxide", amount = 50},
    },
    results =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    main_product = "sulfuric-acid",
    subgroup = "bob-fluid",
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    icon_size = 64,
    icon_mipmaps = 4,
    order = "b[fluid-chemistry]-f[sulfuric-acid]",
    crafting_machine_tint =
    {
      primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
      secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
      tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "sulfur-dioxide",
    category = "chemistry",
    subgroup = "bob-fluid",
    order = "a[fluid]-g[sulfur-dioxide]", 
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "sulfur", amount = 5},
      {type = "fluid", name = "oxygen", amount = 50}
    },
    results =
    {
      {type = "fluid", name = "sulfur-dioxide", amount = 50}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.7, b = 0.0, a = 0.000},
      secondary = {r = 1.0, g = 1.0, b = 0.5, a = 0.000},
      tertiary = {r = 0.9, g = 0.9, b = 0.25, a = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "petroleum-gas-cracking",
    icon = "__bobplates__/graphics/icons/petrolium-gas-cracking.png",
    icon_size = 32,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[hydrogen]",
    category = "chemistry",
    enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 5},
      {type = "fluid", name = "petroleum-gas", amount = 5},
    },
    results =
    {
      {type = "fluid", name = "hydrogen", amount = 250}
    },
    main_product= "", -- Causes it to use the recipe name.
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.34, b = 0.5, a = 0.000},
      secondary = {r = 0.3, g = 0.1, b = 0.3, a = 0.000},
      tertiary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
    },
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "bob-oil-processing",
    icon = "__bobplates__/graphics/icons/bob-oil-processing.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100, fluidbox_index = 2}
    },
    results=
    {
      {type = "fluid", name = "heavy-oil", amount = 50},
      {type = "fluid", name = "light-oil", amount = 20},
      {type = "fluid", name = "petroleum-gas", amount = 30}
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "coal-cracking",
    icon = "__bobplates__/graphics/icons/coal-cracking.png",
    icon_size = 32,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-a[coal-cracking]",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "coal", amount = 3},
      {type = "fluid", name = "water", amount = 15}
    },
    results =
    {
      {type = "fluid", name = "heavy-oil", amount = 12}
    },
    main_product= "", -- Causes it to use the recipe name.
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.34, b = 0.5, a = 0.000},
      secondary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      tertiary = {r = 0.5, g = 0.04, b = 0.0, a = 0.000},
    },
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "salt",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 25}
    },
    result = "salt",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "lithium-chloride",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "lithia-water", amount = 25}
    },
    result = "lithium-chloride",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "sulfur-2",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    order = "f[sulfur]",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "sulfur-dioxide", amount = 50},
      {type = "fluid", name = "hydrogen", amount = 80}
    },
    result = "sulfur",
    result_count = 5,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "calcium-chloride",
    subgroup = "bob-resource-chemical",
    order = "f[calcium-chloride]",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="item", name="stone", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=10},
    },
    result = "calcium-chloride",
    crafting_machine_tint =
    {
      primary = {r = 0.5, g = 0.5, b = 0.4, a = 0.000},
      secondary = {r = 0.7, g = 0.5, b = 0.0, a = 0.000},
      tertiary = {r = 0.5, g = 0.05, b = 0.4, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "alumina",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="item", name="bauxite-ore", amount=1},
    },
    result = "alumina",
    order = "f[alumina]"
  },

  {
    type = "recipe",
    name = "lead-oxide",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    icon_size = 32,
    subgroup = "bob-resource-chemical",
    order = "f[lead-oxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="lead-ore", amount=1},
      {type="fluid", name="oxygen", amount=10},
    },
    results =
    {
      {type="item", name="lead-oxide", amount=1},
      {type="fluid", name="sulfur-dioxide", amount=10},
    },
    main_product = "lead-oxide",
    {
      primary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.1, g = 0.01, b = 0.1, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "silver-nitrate",
    subgroup = "bob-resource-chemical",
    order = "f[lead-oxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"silver-plate", 1},
      {type = "fluid", name = "nitrogen-dioxide", amount = 10},
    },
    result = "silver-nitrate",
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.3, g = 0.03, b = 0.3, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "silver-oxide",
    subgroup = "bob-resource-chemical",
    order = "f[lead-oxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"silver-nitrate", 1},
      {"sodium-hydroxide", 1},
    },
    result = "silver-oxide",
    {
      primary = {r = 0.3, g = 0.3, b = 0.3, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.3, g = 0.03, b = 0.3, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "tungsten-oxide",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "tungstic-acid", amount = 10},
    },
    result = "tungsten-oxide",
  },

  {
    type = "recipe",
    name = "powdered-tungsten",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "tungsten-oxide", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 15}
    },
    result = "powdered-tungsten",
  },

  {
    type = "recipe",
    name = "cobalt-oxide",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "cobalt-ore", amount = 2},
      {type = "item", name = "stone", amount = 1}
    },
    result = "cobalt-oxide",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "cobalt-oxide-from-copper",
    icon = "__bobplates__/graphics/icons/copper-cobalt-oxide.png",
    icon_size = 32,
    subgroup = "bob-material-chemical",
    order = "c-b[cobalt-oxide-from-copper]",
    category = "chemical-furnace",
    energy_required = 25,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "copper-ore", amount = 7},
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "carbon", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 5},
    },
    results=
    {
      {type = "item", name = "copper-plate", amount_min = 7, amount_max = 11},
      {type = "item", name = "cobalt-oxide", amount_min = 1, amount_max = 3},
    },
    main_product= "copper-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "silver-from-lead",
    icon = "__bobplates__/graphics/icons/lead-silver.png",
    icon_size = 32,
    subgroup = "bob-material-chemical",
    order = "c-b[silver-from-lead]",
    category = "chemical-furnace",
    energy_required = 25,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "lead-oxide", amount = 7},
      {type = "item", name = "carbon", amount = 3},
      {type = "item", name = "nickel-plate", amount = 1},
    },
    results=
    {
      {type = "item", name = "lead-plate", amount_min = 7, amount_max = 11},
      {type = "item", name = "silver-ore", amount_min = 1, amount_max = 3},
    },
    allow_decomposition = false
  },

 
  {
    type = "recipe",
    name = "silicon-carbide",
    subgroup = "bob-material-chemical",
    category = "chemical-furnace",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {type="item", name="silicon-powder", amount=1},
      {type="item", name="carbon", amount=1}
    },
    result="silicon-carbide",
    result_count = 2,
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "lead-oxide-2",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    icon_size = 32,
    subgroup = "bob-resource-chemical",
    order = "f[lead-oxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="lead-ore", amount=1},
      {type="fluid", name="water", amount=4},
    },
    results =
    {
      {type="item", name="lead-oxide", amount=1},
      {type="fluid", name="hydrogen-sulfide", amount=10},
    },
    main_product = "lead-oxide",
    {
      primary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      secondary = {r = 0, g = 0.3, b = 0.7, a = 0.000},
      tertiary = {r = 0.5, g = 0.5, b = 0, a = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "hydrogen-sulfide",
    icon = "__bobplates__/graphics/icons/hydrogen-sulfide.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "a[fluid]-g[hydrogen-sulfide]", 
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "sulfur", amount = 5},
      {type="fluid", name="hydrogen", amount=80},
    },
    results =
    {
      {type="fluid", name="hydrogen-sulfide", amount=50},
    },
    {
      primary = {r = 0.7, g = 0.7, b = 0.0, a = 0.000},
      secondary = {r = 1.0, g = 1.0, b = 1.0, a = 0.000},
      tertiary = {r = 0.9, g = 0.9, b = 0.45, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "sulfur-3",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    order = "f[sulfur]",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "hydrogen-sulfide", amount = 50},
      {type = "fluid", name = "oxygen", amount = 25}
    },
    result = "sulfur",
    result_count = 5,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000},
      secondary = {r = 1.0, g = 0.000, b = 0.000},
      tertiary = {r = 0.960, g = 0.806, b = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "sulfuric-acid-3",
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    icon_size = 64,
    icon_mipmaps = 4,
    category = "chemistry",
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-f[sulfuric-acid]",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "hydrogen-sulfide", amount = 50},
      {type = "fluid", name = "oxygen", amount = 100},
    },
    results =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000},
      secondary = {r = 1.0, g = 0.000, b = 0.000},
      tertiary = {r = 0.564, g = 0.795, b = 0.000},
    },
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "bob-heavy-water",
    icon = "__bobplates__/graphics/icons/heavy-water.png",
    icon_size = 64,
    subgroup = "bob-fluid",
    order = "b[fluid-chemistry]-b[heavy-water]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 100},
      {type = "fluid", name = "hydrogen-sulfide", amount = 1},
    },
    results =
    {
      {type = "fluid", name = "heavy-water", amount = 0.5},
      {type = "fluid", name = "water", amount = 99.5},
    },
    crafting_machine_tint =
    {
      primary = {r=0, g=0.34, b=0.6, a = 0.000},
      secondary = {r=0.3, g=0.6, b=0.8, a = 0.000},
      tertiary = {r=0.7, g=0.7, b=0.7, a = 0.000},
    },
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "heavy-water-electrolysis",
    icon = "__bobplates__/graphics/icons/heavy-water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[heavy-water-electrolysis]",
    category = "electrolysis",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "heavy-water", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "deuterium", amount = 20},
      {type = "fluid", name = "oxygen", amount = 12.5}
    },
    allow_decomposition = false
  },
}
)

