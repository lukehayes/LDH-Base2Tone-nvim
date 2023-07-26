This repo is a fork of [Base2Tone-nvim](https://github.com/atelierbram/Base2Tone-nvim)
by atlelierbram so all credit should go to him!

I personally didn't like the sidebar being a different color to the main
background so all this repo does is set the sidebar to be the same
color as the background color for light and dark themes.

## Installation

Install these colorschemes like you would any other plugin.
With Packer:

```lua
use({ "lukehayes/LDH-Base2Tone-nvim" })
```

## Activate a colorscheme in a Lua config file:

```lua
-- dark schemes
vim.cmd("colorscheme base2tone_evening_dark")
-- or any of the other schemes:
-- vim.cmd("colorscheme base2tone_morning_dark")
-- vim.cmd("colorscheme base2tone_sea_dark")
-- vim.cmd("colorscheme base2tone_space_dark")
-- vim.cmd("colorscheme base2tone_earth_dark")
-- vim.cmd("colorscheme base2tone_forest_dark")
-- vim.cmd("colorscheme base2tone_field_dark")
-- vim.cmd("colorscheme base2tone_garden_dark")
-- vim.cmd("colorscheme base2tone_desert_dark")
-- vim.cmd("colorscheme base2tone_lake_dark")
-- vim.cmd("colorscheme base2tone_meadow_dark")
-- vim.cmd("colorscheme base2tone_drawbridge_dark")
-- vim.cmd("colorscheme base2tone_mall_dark")
-- vim.cmd("colorscheme base2tone_suburb_dark")
-- vim.cmd("colorscheme base2tone_lavender_dark")
-- vim.cmd("colorscheme base2tone_pool_dark")
-- vim.cmd("colorscheme base2tone_porch_dark")
-- vim.cmd("colorscheme base2tone_heath_dark")
-- vim.cmd("colorscheme base2tone_cave_dark")
-- vim.cmd("colorscheme base2tone_motel_dark")

-- light schemes
-- vim.cmd("colorscheme base2tone_evening_light")
-- vim.cmd("colorscheme base2tone_morning_light")
-- vim.cmd("colorscheme base2tone_sea_light")
-- vim.cmd("colorscheme base2tone_space_light")
-- vim.cmd("colorscheme base2tone_earth_light")
-- vim.cmd("colorscheme base2tone_forest_light")
-- vim.cmd("colorscheme base2tone_field_light")
-- vim.cmd("colorscheme base2tone_garden_light")
-- vim.cmd("colorscheme base2tone_desert_light")
-- vim.cmd("colorscheme base2tone_lake_light")
-- vim.cmd("colorscheme base2tone_meadow_light")
-- vim.cmd("colorscheme base2tone_drawbridge_light")
-- vim.cmd("colorscheme base2tone_mall_light")
-- vim.cmd("colorscheme base2tone_suburb_light")
-- vim.cmd("colorscheme base2tone_lavender_light")
-- vim.cmd("colorscheme base2tone_pool_light")
-- vim.cmd("colorscheme base2tone_porch_light")
-- vim.cmd("colorscheme base2tone_heath_light")
-- vim.cmd("colorscheme base2tone_cave_light")
-- vim.cmd("colorscheme base2tone_motel_light")
```

### Credits
- [atelierbram](https://github.com/atelierbram)
