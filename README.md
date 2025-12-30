# 🎲 Crafting Chaos

<div align="center">

![Crafting Chaos Banner](https://img.shields.io/badge/Crafting_Chaos-2.0.0-blue?style=for-the-badge)
![Minecraft Version](https://img.shields.io/badge/Minecraft-1.20%2B-orange?style=for-the-badge&logo=minecraft)
![License](https://img.shields.io/badge/License-Apache_2.0-blue?style=for-the-badge)
![Downloads](https://img.shields.io/github/downloads/WormWoodMC/Crafting-Chaos/total?style=for-the-badge&logo=github)

*Turn your Minecraft world upside down with unpredictable crafting, fishing, and enchanting!*

[📂 Index](INDEX.md) • [📝 Changelog](CHANGELOG.md) • [🐛 Issues](https://github.com/WormWoodMC/Crafting-Chaos/issues)

</div>

---

## ✨ What is Crafting Chaos?

Crafting Chaos is a Minecraft datapack that adds a delightful twist of unpredictability to your world. Imagine crafting a diamond pickaxe and getting a golden sword instead, or fishing for salmon and reeling in an enchanted book! That's the magic of Crafting Chaos.

Perfect for servers looking to spice up gameplay, content creators seeking entertaining moments, or anyone who thinks Minecraft has become a bit too predictable. With four distinct modules and ten levels of chaos intensity, you can fine-tune exactly how wild you want your world to be.

---

## 🎯 Key Features

### 🎣 **Fishing Chaos**
Never know what you'll catch! Fish might become tools, treasure, or even rare enchanted items.

### ⚔️ **Mob Drop Mayhem**
Defeating mobs becomes an adventure in itself. Zombies might drop diamonds, creepers could leave behind enchanted bows.

### 🔨 **Recipe Roulette**
Craft within categories but get surprised by the outcome. That helmet you needed? Enjoy your new chestplate!

### ✨ **Enchantment Surprises**
The enchantment table becomes a mystery box. Sharpness becomes Fortune, Protection turns into Feather Falling.

### 🎛️ **Full Control**
- Toggle each module independently
- 10 chaos levels from "barely noticeable" to "pure madness"
- Admin-friendly commands
- Persistent settings across restarts

---

## 🚀 Quick Start

1. **Download** the latest [release](https://github.com/WormWoodMC/Crafting-Chaos/releases)
2. **Drop** the `Crafting-Chaos` folder into your world's `datapacks` folder
3. **Run** `/reload` in your world or server
4. **Become admin** with `/tag @s add crafting_chaos.admin`
5. **Configure** your chaos with `/function crafting_chaos:admin/main`

That's it! You're ready to embrace the chaos.

---

## 🎮 Demo Experience

| Scenario | Normal Minecraft | With Crafting Chaos |
|----------|------------------|-------------------|
| Fishing | 🐟 Salmon | 💎 Diamond Sword |
| Zombie Kill | 💀 Rotten Flesh | ⚡ Enchanted Bow |
| Craft Helmet | 🪖 Iron Helmet | 🛡️ Diamond Chestplate |
| Enchant Sword | ⚔️ Sharpness V | 🔥 Fire Aspect II |

*Results vary based on chaos level and random chance!*

---

## 🏗️ Architecture

Crafting Chaos is built with performance and compatibility in mind:

- **Scoreboard-based** configuration system
- **Storage-driven** data management
- **Advancement triggers** for event detection
- **Individual function** architecture (no parameter passing limitations)
- **Loot table overrides** for seamless integration

Works on single-player worlds, multiplayer servers, and alongside most other datapacks and plugins.

---

## 📊 Configuration at a Glance

```mcfunction
# Enable all modules
/function crafting_chaos:admin/toggle_fishing
/function crafting_chaos:admin/toggle_mob_drops
/function crafting_chaos:admin/toggle_recipe
/function crafting_chaos:admin/toggle_enchantment

# Set chaos level (1-10)
/function crafting_chaos:admin/set_chaos_5

# Check status
/function crafting_chaos:admin/main
```

---

## 🌟 Why Choose Crafting Chaos?

### For Server Owners
- Keep players engaged with unexpected discoveries
- Create unique events with temporary chaos boosts
- Fine-tuned control over gameplay impact
- Zero performance overhead

### For Content Creators
- Endless entertainment potential
- Surprise moments for viewers
- Customizable difficulty scaling
- Perfect for challenge runs

### For Regular Players
- Fresh take on familiar gameplay
- Rediscover the joy of exploration
- Adjustable to your comfort level
- Works with existing worlds

---

## 🤝 Contributing

We welcome contributions! Whether you found a bug, have a feature idea, or want to improve documentation:

1. Check our [issues](https://github.com/WormWoodMC/Crafting-Chaos/issues) page
2. Fork the repository
3. Make your changes
4. Submit a pull request

Every contribution helps make Crafting Chaos better!

---

## 📚 Documentation

- 📂 [Repository Index](INDEX.md)
- 📝 [Changelog](CHANGELOG.md)

---

## 🛡️ Compatibility

| Requirement | Minimum | Recommended |
|-------------|---------|-------------|
| Minecraft | 1.20 | Latest |
| Java | 17+ | Latest |
| RAM | 2GB | 4GB+ |
| Server Type | Vanilla | Any (Paper, Spigot, etc.) |

---

## 📄 License

Crafting Chaos is licensed under the [Apache License 2.0](LICENSE). Feel free to use it in your projects, servers, and videos!

---

## 🙏 Acknowledgments

- The Minecraft community for inspiration and feedback
- All contributors who help improve the datapack
- Server owners who test and provide valuable insights
- Content creators who showcase Crafting Chaos

---

<div align="center">

**[⬆️ Back to top](#-crafting-chaos)**

Made with ❤️ by the WormWoodMC team

*Embrace the chaos. Enjoy the surprises.*

</div>
