# Modules Overview

Crafting Chaos consists of four main randomization modules, each targeting a different aspect of Minecraft gameplay. Each module can be enabled or disabled independently.

## 🎣 Fishing Module

**What it does**: Randomizes fishing loot to create unpredictable catches.

**Features**:
- Replaces standard fish with random items
- Includes common, uncommon, and rare loot tiers
- Chaos level affects rarity distribution
- Can spawn enchanted books with random enchantments

**Example loot at different chaos levels**:
- **Low chaos (1-3)**: Mostly fish, occasional sticks or string
- **Medium chaos (4-7)**: Mix of fish, tools, and rare items
- **High chaos (8-10)**: Diamond gear, enchanted books, and exotic items

**Admin command**: `/function crafting_chaos:admin/toggle_fishing`

---

## ⚔️ Mob Drops Module

**What it does**: Changes what mobs drop when defeated, adding variety and surprise to combat.

**Features**:
- Separate loot tables for hostile and passive mobs
- Maintains balance by keeping drop rates similar
- Chaos level determines drop variety
- Special rare drops for exciting moments

**Hostile mobs might drop**:
- Standard drops (bones, arrows, gunpowder)
- Tools and weapons
- Rare materials (iron, gold, diamonds)
- Special items (ender pearls, blaze rods)

**Passive mobs might drop**:
- Food items (beef, porkchop, chicken)
- Materials (leather, wool)
- Occasionally tools or rare items

**Admin command**: `/function crafting_chaos:admin/toggle_mob_drops`

---

## 🔨 Recipe Module

**What it does**: Randomizes crafting outputs while keeping recipes recognizable.

**How it works**:
- When you craft an item, it gets replaced with another item from the same category
- Categories include: Tools, Weapons, Armor, Blocks, Food, and Redstone
- Special items like Netherite gear and Elytra are preserved
- Visual feedback shows when randomization occurs

**Category examples**:
- **Tools**: Crafting a pickaxe might give you an axe or shovel instead
- **Weapons**: Swords can become bows or other weapons
- **Armor**: Helmet might become chestplate or different material
- **Blocks**: Crafting planks might give you stone or glass
- **Food**: Bread might become apples or other food items
- **Redstone**: Redstone dust could become repeaters or pistons

**Admin command**: `/function crafting_chaos:admin/toggle_recipe`

---

## ✨ Enchantment Module

**What it does**: Randomizes enchantments applied at the enchantment table.

**Features**:
- Replaces standard enchantments with random ones
- Chaos level affects enchantment power and variety
- Maintains appropriate enchantment levels
- Works with all enchantable items

**How it works**:
1. Use an enchantment table normally
2. The system detects the enchantment
3. It's replaced with random enchantments of similar power
4. Visual and sound effects indicate the change

**Example enchantments**:
- A sword meant for Sharpness might get Looting or Fire Aspect
- Pickaxe enchantments can include efficiency, fortune, or silk touch variants
- Armor might get protection, feather falling, or other defensive enchantments

**Admin command**: `/function crafting_chaos:admin/toggle_enchantment`

---

## 🎛️ Module Interaction

The modules work independently but can create interesting combinations:

- **Fishing + Enchantments**: Catch enchanted books with random enchantments
- **Mob Drops + Recipe**: Use random mob drops to craft random items
- **All modules active**: Maximum chaos experience

## ⚙️ Performance Considerations

- All modules are optimized for minimal server impact
- Randomization calculations are lightweight
- No permanent world modifications
- Safe to use on existing worlds

## 🔧 Customization

While each module has built-in randomness, server administrators can:
- Adjust chaos levels globally
- Disable specific modules that don't fit their server theme
- Use admin commands for temporary changes during events

## 📊 Module Statistics

The datapack tracks:
- Number of items randomized
- Enchantments applied
- Loot modified
- All statistics persist across server restarts

View statistics with admin commands in future versions.
