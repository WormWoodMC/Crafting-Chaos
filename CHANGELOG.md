# Changelog

All notable changes to Crafting Chaos are documented here. As requested, this file contains only the current release entry.

## [2.0.0] - 2025-12-30

### Added
- Modular toggle system for each core module exposed via admin functions and storage-backed state
- Optional per-player chaos state support allowing personalized chaos without affecting others
- Seeded RNG support and deterministic seed import/export via `data/crafting_chaos/lib/utils/generate_seed.mcfunction`
- New `item_modifiers` JSON schemas for controlled enchantment and clear-enchant flows
- `INDEX.md` repository index and expanded developer documentation

### Changed
- Reworked RNG library for improved distribution and reproducibility (`data/crafting_chaos/lib/rng/`)
- Migration of configuration from scoreboard-only keys to combined `storage` + scoreboard model for persistence and easier backups
- Enchantment module now applies enchantments via item modifiers instead of ad-hoc item edits (see `data/crafting_chaos/item_modifiers/`)
- Fishing and mob-drops now use refined loot pool categories to reduce extreme outliers while preserving surprise
- Admin commands reorganized for clearer naming and an improved `admin/main` UI

### Deprecated
- Legacy scoreboard-only configuration endpoints (will be fully removed in 3.0.0)

### Removed
- The old `randomize_weapon.mcfunction` entrypoint (replaced by `apply_randomization.mcfunction` and item modifier flows)

### Breaking Changes
- Storage key layout changed. If you have custom automation that reads/writes datapack storage, update the keys from the old flat layout to the new structured layout under the `crafting_chaos` storage object.
- Item modifier JSON shapes changed; any externally generated `item_modifiers` will need schema updates.

### Migration Notes
- Back up your world before upgrading. The datapack now stores more structured state in `storage` which will be created/updated on `/reload`.
- If you used external scripts that manipulated scoreboard entries for settings, switch them to the new `storage` paths or use the helper functions in `data/crafting_chaos/lib/config/`.
- Re-run `/function crafting_chaos:lib/config/load_from_storage` if you used previous manual storage dumps.

### Rationale for v2.0.0
This release introduces user-facing feature additions (per-player chaos, seeded RNG), architectural changes to persistence, and breaking schema updates that require administrator attention. The scope and compatibility impact justify a major version bump.

### Credits
- Designed and implemented by WormWoodMC contributors
