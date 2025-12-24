# Installation Guide

## Requirements

- Minecraft Java Edition 1.20 or higher
- A Minecraft server or single-player world

## Installation Steps

### For Server Owners

1. Download the latest version of Crafting Chaos from the [releases page](https://github.com/WormWoodMC/Crafting-Chaos/releases)
2. Extract the downloaded ZIP file
3. Copy the `Crafting-Chaos` folder into your server's `datapacks` directory
4. Restart your server or run `/reload` in the server console

### For Single-Player Worlds

1. Download the latest version of Crafting Chaos from the [releases page](https://github.com/WormWoodMC/Crafting-Chaos/releases)
2. Extract the downloaded ZIP file
3. Copy the `Crafting-Chaos` folder into your world's `datapacks` directory
   - Locate your world saves: `%appdata%\.minecraft\saves` on Windows
   - Or `~/Library/Application Support/minecraft/saves` on macOS
   - Or `~/.minecraft/saves` on Linux
4. Open your world and run `/reload` in chat

## First-Time Setup

After installing the datapack:

1. Grant admin permissions to yourself:
   ```
   /tag @s add crafting_chaos.admin
   ```

2. Configure your preferred settings:
   ```
   /function crafting_chaos:admin/main
   ```

3. Set the chaos level (1-10, where 10 is maximum chaos):
   ```
   /function crafting_chaos:admin/set_chaos_5
   ```

## Verification

To verify the installation:

1. Run `/function crafting_chaos:admin/main` - you should see the admin menu
2. Check that all modules are enabled in the status display
3. Try crafting an item - it should display "Randomized!" in gold text

## Troubleshooting

If the datapack doesn't load:

- Ensure you're using Minecraft 1.20 or higher
- Check that the folder structure is correct: `datapacks/Crafting-Chaos/data/crafting_chaos/`
- Try running `/reload` again
- Check the server console for any error messages

For more help, see our [troubleshooting guide](troubleshooting.md).
