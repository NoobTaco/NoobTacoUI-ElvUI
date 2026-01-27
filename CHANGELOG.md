# Changelog

## [2.0.1-alpha.2] - 2026-01-27

### Added

- Added AI Usage policy documentation.

### Updated

- **Modernization Refactor**: Implemented modern ElvUI Engine access pattern using named keys across the entire codebase.
- **Naming Redesign**: Renamed internal module references from `NoobTacoUI` to `NoobTacoUIElv` to improve clarity and prevent conflicts with the standalone addon.
- Updated Pet unit frame configuration for better consistency.
- Cleaned up Actionbar and Totem bar settings.
- Updated media files and paths for better internal organization.
- Updated funding links to support the project.
- Updated README with AI Usage policy and general documentation improvements.

### Chore

- Synced `.gitignore` with `NoobTacoUI`.
- Added `.gitattributes` to enforce LF line endings across the repository.
- Refactored all data modules and integrations to use the new Engine access pattern.

## [2.0.1-alpha.1] - 2026-01-26

### Updated

- Added Guild Notes to the member list in the Guild DataText tooltip
- Members will now show as `Charactername (Note)` when hovering over the Guild DataText

## [2.0.0-alpha] - Midnight Upgrade

### Added

- Major upgrade for ElvUI "Midnight" (15.x) and WoW 12.0 compatibility
- Added tracking for new version in installation process

### Updated

- Bumping version to 2.0.0 for major release
- Verified compatibility with ElvUI 15.x database structure
- Ensured all unit frame and nameplate hooks are compliant with WoW 12.0 API changes
- Standardized UI textures to `NT_Nord05` across unit frames, nameplates, and general settings
- Standardized status bar textures to `NT_Nord05` and `NT_Nord04` for gloss.
- Refined typography by transitioning General, DataBars, and Nameplate elements to `Poppins-Medium` for improved readability
- Standardized health and name text formatting and positioning across all unit frames.
- Standardized cooldown fonts to `Poppins-SemiBold` across all UI modules (Actionbar, Auras, Bags, Unitframes, etc.)
- Optimized Nameplate configuration with refined click dimensions (20 height, 215 width), castbar positioning, and text formatting
- Enabled `classpower` for enemy NPC and Player nameplates by default
- Updated General UI color palette including backdrop, border, and value colors for better visual consistency
- Added Talking Head Frame scaling and missing item level font configurations
- Updated mover positions, including `VehicleLeaveButton` for improved layout.
- Enabled `aurabar` for the player unit frame.
- Standardized `disableMouseoverGlow` and height/width settings across unit frames.

### Removed

- Removed Elite Overlay functionality (`modules/SimpleRareElite`) and associated options menu entries as requested

### Fixed

- Fixed `attempt to perform indexed assignment on field 'plateSize' (a nil value)` by adding compatibility for ElvUI 14.x `clickSize`
- Fixed `attempt to index a nil value (field 'filters')` by properly initializing nameplate filters table and adding existence checks
- Guaranteed safety guards for removed ElvUI default filters (`ElvUI_Target`, `ElvUI_NonTarget`)
- Fixed GitHub Actions packager error by correcting `.pkgmeta` to match TOC filename

## [1.6.0]

### Added

- Starting development for version 1.6.0
- Added all NT_Nord texture files (NT_nord0 through NT_nord15) to SharedMedia as status bar textures
- Added gradient versions of all NT_Nord textures with "_Gradient" naming convention
- Added NT_Bar_nord0 texture to SharedMedia status bar collection
- Added new audio file "NT_InfussionOfLight" to SharedMedia sound collection

### Updated

- Updated raid1 unit frame configuration with enhanced customization options
- Increased raid1 buff indicator size from 10 to 15 for better visibility
- Enhanced raid1 unit frames with custom text fields for health and name display
- Updated raid1 debuffs configuration with improved size, positioning, and priority settings
- Changed raid1 growth direction from RIGHT_UP to DOWN_RIGHT for better layout
- Increased raid1 frame dimensions (height 45→60, width 90→100) for improved readability
- Added proper initialization for raid1 custom text fields to prevent configuration errors
- Cleaned up redundant LibSharedMedia-3.0 code by removing embedded library
- Optimized addon structure by relying on ElvUI_Libraries for LibSharedMedia-3.0
- Removed unnecessary Libraries directory and Load_Libraries.xml file
- Updated TOC file to remove commented library references

### Fixed

- Fixed "attempt to index field 'classbar' (a nil value)" error in NamePlates module
- Corrected database structure to use 'classpower' instead of 'classbar' for ENEMY_NPC and ENEMY_PLAYER units
- Aligned nameplate configuration with ElvUI's internal database structure

## [1.5.9]

### Updated

- Updated interface versions to support MoP Classic (50407) and latest retail (110205)
- Standardized all player buff sizes to 30 across auras and unit frames (player, target, focus, pet)
- Updated boss unit frame buff and debuff sizes to 20 for better visibility
- Enhanced boss unit frame castbar with custom colors for normal, interrupted, and non-interruptible casts
- Improved boss unit frame layout with custom text elements for health and name display
- Refined boss unit frame text positioning with centered alignment and proper offsets
- Updated general UI color scheme with refined backdrop, border, and value colors
- Reorganized addon integrations into logical component-based folders (Nameplates, Partyframe)
- Improved boss frame compatibility to support MoP Classic and Retail while skipping older Classic versions
- Reduced chat bubble font size from 16 to 14 for improved readability

### Added

- Created separate boss unit frame module (UnitframesBoss.lua) for better code organization
- Added custom castbar colors for boss units (orange normal, red interrupted, gray non-interruptible)
- Added custom text elements for boss unit frames with independent health and name display
- Added Poppins font styling for boss unit frame text elements (Regular for health, SemiBold for names)
- Added castbar icon configuration and font styling for boss units
- Added proper custom text initialization for boss frames to prevent configuration errors
- Added Plater nameplate integration with automatic ElvUI nameplate disabling
- Reorganized integration structure with dedicated Nameplates and Partyframe folders

### Fixed

-

## [1.5.8]

### Updated

- Updated game versions (forgot in last update)

## [1.5.7]

### Updated

- Changed TOC for all versions of the game.
- Included Category for addon list.

## [1.5.6]

### Added

- Added dialog pop-up for creating a new ElvUI profile
- Added confirmation dialog for overriding the current profile
- Added CVAR setting for SoftTargetInteract to 3

## [1.5.5]

### Updated

- Updated the colors for class resources combo points
- Adjusted the reaction colors for nameplates
- Added support for new nameplate styles
- Improved performance of nameplate updates
- Fixed an issue with nameplate visibility in certain scenarios
- TOC update

## [1.5.4]

### Updated

- Removed wago analytics. Was causing issues.

## [1.5.3]

### Added

- Icon for ingame addon menu
- Added wago analytics

## [1.5.2]

### Updated

- Fixed nameplate text bug. Names should now properly display in the correct location. Fixes [#56](https://github.com/NoobTaco/NoobTacoUI/issues/56)

## [1.5.1]

### Added

- Refactored some code and broke integrations into their own sections code wise.
- Added integration for Baganator. Will disable ElvUI bags.
- Added integration for XIV_Databar. Will disable bottom data bars and move bottom of UI up to fit XIV.
- Added integration for Cell unit frames. Default ElvUI raid and party frames will be disabled.

### Updated

- Updated README.md and README.bbc

## [1.5.0]

## [1.5.4]

### Updated

- Removed wago analytics. Was causing issues.

## [1.5.3]

### Added

- Icon for ingame addon menu
- Added wago analytics

## [1.5.2]

### Updated

= Fixed nameplate text bug. Names should now properly display in the correct location. Fixes [#56](https://github.com/NoobTaco/NoobTacoUI/issues/56)

## [1.5.1]

### Added

- Refactored some code and broke integrations into their own sections code wise.
- Added integration for Baganator. Will disable ElvUI bags.
- Added integration for XIV_Databar. Will disable bottom data bars and move bottom of UI up to fit XIV.
- Added integration for Cell unit frames. Default ElvUI raid and party frames will be disabled.

### Updated

- Updated README.md and README.bbc

## [1.5.0]

### Added

- Added new feature to customize the color scheme of the UI.

### Improved

- Improved performance and stability.

### Fixed

- Fixed various bugs and issues reported by users.

### Updated

- Updated compatibility with the latest game version.
- Enhanced installation process for smoother setup.

## [1.4.6]

### Added

- Added new option during install to choose between the old NoobTacoUI nameplates or a Blizzard-like version.

## [1.4.5]

### Updated

- Updated PowerBarContainer (Flight Interface) - May need to be relocated if interfered with.
- Moved OzCooldownsMover location (ProjectAzilroka)
- Relocated TopCenterMover to give more space on top of the screen.

## [1.4.4]

### Updated

- Updated Player and Target health display.
- Updated the nameplate health text.
- Updated character sheet item level and gems.
- More TOC cleanup.
- Updated the README file.

## [1.4.3]

### Updated

- Updated TOC (Typo before hand).
- Updated the elite overlays to the new modern UI overlays.

## [1.4.2]

### Updated

- Updated TOC for all versions of the game.
- Added check if Baganator is loaded. If so, disable ElvUI bags by default (More bags to be added to check in later versions).

## [1.4.1]

### Updated

- Updated TOC for all versions of the game.
- Fixed an error that happens when opening NoobTacoUI installer after it's been installed.

## [1.4.0]

### Changed

- Changed actionbar glow to be more visible.

### Updated

- Updated version checks.

### Fixed

- Fixed issue #35 - Correctly move the new totem tracker for shaman and DK's.

## [1.3.9]

### Changed

- Converted the setup script to use ElvUI's new Raid frame configuration.

### Fixed

- Fixed an error that occurs when trying to install if not on the latest version of ElvUI.

## [1.3.8]

### Changed

- Changed enemy nameplate names to one white for visibility.

### Updated

- Updated install code.

### Bumped

- Bumped TOC for retail.

### Included

- Included a layout that works well with Luxthos's Weak Aura's for WOTLK.

## [1.3.7]

### Replaced

- Replaced most fonts with Exo2 for a more modern and readable look.

## [1.3.6]

### Fixed

- Fixed the unitframe text to reset if reinstalling the NoobTacoUI profile over a different profile.

## [1.3.5]

### Updated

- Updated the Readme.
- Changed the main font.
- Cleaned up buff and debuff.

### Added

- Added 3 new fonts: Dosis, Exo2, and Mukta.

## [1.3.4]

### Updated

- Combat indicator was moved to lower left of Unit Frame.

### Fixed

- Fixed normal font and size so text does not wrap around on the character screen.

### Added

- Added logic to bring up the installer if new version.

### Tweaks

- Tweaks to party and raid frames to fix debuff override as well as make the icons ignore click through for click healing.

### Changed

- Changed default objective length to 400.

### Automatically

- Automatically enable the new Talent Preview and Equipment Manager for WOTLK UI.

## [1.3.3]

### Cleaned up

- Cleaned up version checking code for Actionbars.

### Updated

- Updated target debuffs.
- Updated player debuffs.

### Added

- Added font styling for the tooltip header.
- Added WOTLK Classic support.
- Added pet experience bar.

## [1.3.2]

### Updated

- Updated TOC for all versions of the game.

## [1.3.1]

### Bumped

- Bumped Retail TOC to support 9.2.

### Updated

- Updated TOC to latest game version for Classic, TBC, and Retail.

## [1.3.0]

### Updated

- Updated TOC to latest game version for Classic, TBC, and Retail.

### Adjusted

- Adjusted left and right cluster location.

### Fixed

- Fixed debuff and buff direction.

### Updated

- Updated nameplate and chat bubble text.

## [1.2.5]

### Updated

- [UPDATE] - Focus frame now has been given the NoobTacoUI treatment.

## [1.2.4]

### Tweaked

- Tweaked background to have a little transparency.

### Updated

- Updated the TOC files for packaging as one file instead of several.

## [1.2.3]

### Updated

- Updated Classic Client TOC for new patch 1.13.7.

## [1.2.2]

### Fixed

- Fixed 25 and 40 man raid frames bug that caused double party frames.

## [1.2.1]

### Moved

- Moved XP and Rep bar to the side of chat.

### Fixed

- Fixed hotkey font and placement.

## [1.2.0]

### Added

- Initial release for NoobTacoUI for TBC Classic.

### Added

- Added TBC Classic support.

### Added

- Added combo class points to target nameplate.

### Added

- Added totembar for TBC.

### Fixed

- Fixed bar 2 to have 12 buttons.

### Updated

- Updated logic for finding which client we are on.

### Made changes

- Made changes to healing profile.

### Changed

- Changed target casting bar to be on the target frame.

### Moved

- Moved player XP bar above bars.

### Player XP bar

- Player XP bar will hide once at max level.

## [1.1.11]

### Changed

- Changed chat font to bold instead of semi-bold.

### Changed

- Changed aura bars to be on.

### Enabled

- Enabled energy mana regen tick for player unitframe in Classic.

### Added

- Added pet happiness icon (will not load for retail).

## [1.1.10]

### Fixed

- Fixed scaling issue between retail and classic.

### Fixed

- Fixed missing fonts on actionbars.

### Corrected

- Corrected the order of bars.

### Added

- Added a new mouse over bar left of the right chat frame.

## [1.1.8]

### Fixed

- Fixed player unitframe power text and placement.

### Added

- Added flags to fix 40 man raid size issue.

### Adjusted

- Adjusted the text on the installer to be more clear.

## [1.1.7]

### Added

- Added font data for the changes made to ElvUI 12.1.

## [1.1.6]

### Updated

- XP bar now shows during combat.

### Extended

- Extended XP bar.

### Moved

- Moved side action bars down and closer to main cluster.

### Moved

- Moved alt power bar.

## [1.1.4]

### Moved

- Moved the BG score overlay on top of the screen.

### Adjusted

- Adjusted the mirror timer bar locations.

### Added

- Added profile settings for healer specs with lower centered party and raid frames.

### Added

- Added party frame format.

### Added

- Added raid frame.

### Added

- Added 40 player raid.

## [1.1.3]

### Added

- Added options to turn the elite dragon overlay on or off.

### Added

- Added ElvUI Norm bar texture on install to fix any other profile that changed bar textures.

## [1.1.2]

### Fixed

- Fixed directory for overlay display.

## [1.1.1]

### Fixed

- Fixed media fonts pointing to NoobTacoUI-Media causing an exception/error.

## [1.1.0]

### Included

- Included NoobTacoUI-Media into core profile addon.

### Added

- Added elite overlay.

### Added

- Added Google fonts: Montserrat, Lato, Roboto.

## [1.0.4]

### Fixed

- Fixed secondary actionbars being visible while in a vehicle.

## [1.0.3]

### Cleaned up

- Cleaned up actionbar code.

### Added

- Added logic to allow the use of the installer in Classic.

## [1.0.2]

### Cleaning up

- Cleaning up for packager.

## [1.0.1]

### Removing

- Removing .git folders and preparing for automated update.

## [1.0.0]

### Initial upload

- Initial upload.
