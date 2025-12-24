# Configuration Guide

## Overview

Crafting Chaos provides extensive configuration options through admin commands. You can control which randomization modules are active and adjust the intensity of chaos.

## Admin Commands

### Getting Started

First, give yourself admin permissions:
```
/tag @s add crafting_chaos.admin
```

Then access the admin menu:
```
/function crafting_chaos:admin/main
```

### Module Management

Toggle individual modules on or off:

- **Fishing Randomization**
  ```
  /function crafting_chaos:admin/toggle_fishing
  ```

- **Mob Drop Randomization**
  ```
  /function crafting_chaos:admin/toggle_mob_drops
  ```

- **Recipe Randomization**
  ```
  /function crafting_chaos:admin/toggle_recipe
  ```

- **Enchantment Randomization**
  ```
  /function crafting_chaos:admin/toggle_enchantment
  ```

### Chaos Levels

The chaos level determines how extreme the randomization effects are. Scale from 1 to 10:

| Level | Name | Description |
|-------|------|-------------|
| 1 | Minimal | Slight variations, barely noticeable |
| 2 | Low | Minor randomization |
| 3 | Low-Medium | Noticeable but tame |
| 4 | Medium | Balanced chaos |
| 5 | Medium-High | Significant randomization |
| 6 | High | Very noticeable effects |
| 7 | Very High | Extreme chaos |
| 8 | Extreme | Barely recognizable items |
| 9 | Insane | Total chaos |
| 10 | PURE CHAOS | Maximum unpredictability |

Set chaos level:
```
/function crafting_chaos:admin/set_chaos_[1-10]
```

Examples:
```
/function crafting_chaos:admin/set_chaos_3    # Low-Medium chaos
/function crafting_chaos:admin/set_chaos_7    # Very High chaos
/function crafting_chaos:admin/set_chaos_10   # PURE CHAOS
```

### Checking Status

View current module status:
```
/function crafting_chaos:admin/toggle
```

View current chaos level:
```
/function crafting_chaos:admin/chaos
```

## Configuration Persistence

All settings are automatically saved and will persist across server restarts. The configuration is stored in the world data and doesn't require manual file editing.

## Default Settings

By default, Crafting Chaos installs with:
- All modules enabled
- Chaos level set to 5 (Medium-High)
- Debug mode disabled

## Advanced Configuration

For server administrators who want fine-tuned control, you can modify individual scores directly:

```
/scoreboard players set #fishing_module crafting_chaos.config 1    # Enable fishing
/scoreboard players set #chaos_level crafting_chaos.config 7       # Set chaos to 7
```

## Reset to Defaults

To reset all settings to their default values:
```
/function crafting_chaos:admin/reset
```

## Permission Management

To remove admin permissions from a player:
```
/tag <player> remove crafting_chaos.admin
```

To grant admin permissions to another player:
```
/tag <player> add crafting_chaos.admin
```

## Tips

- Start with a low chaos level (3-4) to see how your players react
- Consider disabling certain modules if they interfere with specific gameplay elements
- Use the toggle commands to temporarily disable chaos during events
- Always test settings in a creative world before applying to your main server
