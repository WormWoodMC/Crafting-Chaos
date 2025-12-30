# Repository Index — Crafting Chaos

This index summarizes the repository layout and key files to help contributors and server admins navigate the datapack.

Top-level files
- `pack.mcmeta` — Datapack manifest
- `README.md` — Project overview and quickstart (linked from here)
- `LICENSE` — Apache 2.0 license

Core datapack layout (in `data/crafting_chaos/`)
- `load.mcfunction`, `tick.mcfunction` — Datapack entrypoints

Admin
- `data/crafting_chaos/admin/` — Admin functions and command UIs
  - `main.mcfunction` — Admin dashboard function
  - `toggle*.mcfunction`, `set_chaos_*.mcfunction` — Toggle and set chaos level utilities

Libraries
- `data/crafting_chaos/lib/` — Reusable helpers and utilities
  - `config/` — Load/save helpers for `storage` and scoreboard integration
  - `rng/` — RNG kernel and utilities (`next_int`, `next_float`, seeded RNG support)
  - `utils/` — Helpers (cleanup, seed generation)

Modules
- `data/crafting_chaos/modules/` — Feature modules (each module is self-contained)
  - `enchantment/` — Enchantment randomization and item modifier integration
  - `fishing/` — Fishing loot randomization and fishing-specific generators
  - `mob_drops/` — Mob drop randomization (loot tables & functions)
  - `recipe/` — Recipe randomization logic

Data-driven files
- `data/crafting_chaos/item_modifiers/` — JSON modifiers used to apply or clear enchantments
- `data/minecraft/loot_tables/` — Overrides for entity and gameplay loot (fishing/mob drops)

Docs
- `docs/` — Documentation and guides
  - `docs/changelog.md` — Changelog (new release notes added)
  - `docs/configuration.md` — Configuration reference
  - `docs/installation.md` — Installation steps
  - `docs/modules.md` — Module descriptions

Developer notes
- Use `data/crafting_chaos/lib/config/` helpers to migrate custom storage/scoreboard tools
- To test a fresh install: drop the folder in `world/datapacks/`, run `/reload`, then run `/function crafting_chaos:load`

If you want this converted into a CONTRIBUTING.md or detailed developer guide, open an issue or submit a PR — thanks!
