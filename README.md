# mp-nvg
Night Vision Goggle Script for FiveM

## Dependencies
- [Renewed-Lib](https://github.com/Renewed-Scripts/Renewed-Lib/releases)
- [ox_lib](https://github.com/overextended/ox_lib/releases)
- [ox_inventory](https://github.com/overextended/ox_inventory/releases)

## Installation
- Drag Resource into Folder
- Add the following snippet into ox_inventory/data/items.lua
```lua
    ['nightvisiongoggles'] = {
        decay = true,
        degrade = 8064,
        label = 'Night Vision Goggles',
        price = 5000,
        weight = 1000,
        stack = false,
        description = 'Mil-Spec. High price, low quality.',
        allowArmed = true,
        client = {
            export = 'mp-nvg.nightvision'
        },
        -- dropModel = `bkr_prop_duffel_bag_01a` -- If using Renewed-Itemsdrops
    },

    ['thermalgoggles'] = {
        decay = true,
        degrade = 8064,
        label = 'Thermal Vision Goggles',
        price = 5000,
        weight = 1000,
        stack = false,
        description = 'Nerd-Spec. High price, high quality.',
        allowArmed = true,
        client = {
            export = 'mp-nvg.thermalvision'
        },
        dropModel = `bkr_prop_duffel_bag_01a`
    },
```
- Add images into ox_inventory/web/images
- Ensure Resource