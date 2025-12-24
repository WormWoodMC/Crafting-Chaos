# Troubleshooting Guide

## Common Issues and Solutions

### Datapack Won't Load

**Problem**: The datapack doesn't appear after running `/reload`

**Solutions**:
1. Check Minecraft version - Crafting Chaos requires 1.20 or higher
2. Verify folder structure:
   ```
   datapacks/
   └── Crafting-Chaos/
       ├── data/
       │   └── crafting_chaos/
       ├── pack.mcmeta
       └── (other files)
   ```
3. Make sure the folder name is exactly `Crafting-Chaos` (not `Crafting-Chaos-master` or similar)
4. Try restarting the server completely

### Commands Not Working

**Problem**: Admin commands show "Unknown command" error

**Solutions**:
1. Ensure you have admin permissions:
   ```
   /tag @s add crafting_chaos.admin
   ```
2. Check if the datapack is loaded:
   ```
   /datapack list
   ```
3. Reload the datapack:
   ```
   /reload
   ```

### Randomization Not Happening

**Problem**: Crafting or enchanting normally without randomization

**Solutions**:
1. Check if modules are enabled:
   ```
   /function crafting_chaos:admin/toggle
   ```
2. Enable specific modules if needed:
   ```
   /function crafting_chaos:admin/toggle_recipe
   /function crafting_chaos:admin/toggle_enchantment
   ```
3. Verify chaos level isn't set to 0:
   ```
   /function crafting_chaos:admin/chaos
   ```

### Performance Issues

**Problem**: Server lag when using the datapack

**Solutions**:
1. Lower the chaos level to reduce calculations
2. Disable modules you don't need:
   ```
   /function crafting_chaos:admin/toggle_fishing
   /function crafting_chaos:admin/toggle_mob_drops
   ```
3. Consider using on dedicated servers with sufficient resources

### Fishing Not Randomized

**Problem**: Caught normal fish instead of random items

**Solutions**:
1. Ensure fishing module is enabled:
   ```
   /function crafting_chaos:admin/toggle_fishing
   ```
2. Check that you're not in a protected area where datapacks might be disabled
3. Verify you're using a fishing rod, not other methods of getting fish

### Mob Drops Not Changed

**Problem**: Mobs dropping standard items

**Solutions**:
1. Enable mob drops module:
   ```
   /function crafting_chaos:admin/toggle_mob_drops
   ```
2. Check if other plugins are interfering with mob drops
3. Ensure the world allows datapack modifications

### Enchantments Not Randomizing

**Problem**: Getting normal enchantments from enchantment table

**Solutions**:
1. Enable enchantment module:
   ```
   /function crafting_chaos:admin/toggle_enchantment
   ```
2. Make sure you're using a standard enchantment table
3. Check that lapis lazuli is in the table (required for enchanting)

### Recipe Randomization Too Extreme

**Problem**: Getting completely unrelated items when crafting

**Solutions**:
1. Lower the chaos level:
   ```
   /function crafting_chaos:admin/set_chaos_3
   ```
2. Disable recipe module if not wanted:
   ```
   /function crafting_chaos:admin/toggle_recipe
   ```

### Lost Admin Permissions

**Problem**: Can't access admin commands anymore

**Solutions**:
1. If you're opped on the server:
   ```
   /tag @s add crafting_chaos.admin
   ```
2. Ask another admin to grant permissions:
   ```
   /tag <your_name> add crafting_chaos.admin
   ```

## Error Messages

### "Unknown function"

**Cause**: Datapack not loaded correctly
**Solution**: Follow steps in "Datapack Won't Load" section

### "No permission"

**Cause**: Missing admin tag
**Solution**: Add admin tag to yourself

### "Invalid selector"

**Cause**: Using commands in wrong context
**Solution**: Ensure commands are run in-game or by console

## Compatibility Issues

### Other Datapacks

Crafting Chaos is designed to be compatible with most datapacks, but conflicts can occur with:

- Other recipe-modifying datapacks
- Custom enchantment systems
- Fishing overhaul datapacks
- Mob drop modifications

**Solution**: Load Crafting Chaos last or disable conflicting modules

### Plugins

Some server plugins may interfere with datapack functionality:

- WorldGuard/Region protection plugins
- Item modification plugins
- Custom mob plugins

**Solution**: Configure plugins to allow datapack modifications or disable conflicting features

## Getting Help

If you're still experiencing issues:

1. Check the [GitHub Issues](https://github.com/WormWoodMC/Crafting-Chaos/issues) for known problems
2. Create a new issue with:
   - Minecraft version
   - Server type (vanilla, spigot, paper, etc.)
   - Other installed datapacks/plugins
   - Steps to reproduce the issue
   - Any error messages from console

## Resetting the Datapack

If you want to start fresh:

1. Disable all modules:
   ```
   /function crafting_chaos:admin/toggle_fishing
   /function crafting_chaos:admin/toggle_mob_drops
   /function crafting_chaos:admin/toggle_recipe
   /function crafting_chaos:admin/toggle_enchantment
   ```
2. Reset chaos level to default:
   ```
   /function crafting_chaos:admin/set_chaos_5
   ```
3. Remove and reinstall the datapack if needed

## Tips for Smooth Operation

- Test settings in a creative world first
- Keep chaos levels moderate for public servers
- Regularly check module status
- Back up your world before major changes
- Monitor server performance with high chaos levels
