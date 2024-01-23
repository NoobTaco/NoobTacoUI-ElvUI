# Changelog

## [1.4.1]

### Updated

-   Updated TOC for all versions of the game

## [1.4.0]

### Updated

-   Changed actionbar glow to be more visible.
-   Updated version checks
-   Fix #35 - Correctly move the new totem tracker for shaman and DK's

## [1.3.9]

### Updated

-   Converted the setup script to use ElvUI's new Raid frame configuration. If you get an error when trying to install please make sure you are on the latest version of ElvUI.

## [1.3.8]

### Updated

-   Changed enemy nameplate names to one white for visibility.
-   Refactored install code
    = Bumped TOC for retail

### Added

-   Included a layout that works well with Luxthos's Weak Aura's for WOTLK https://www.luxthos.com/

## [1.3.7]

### Updated

-   Replaced most fonts with Exo2 for a more modern and readable look.

## [1.3.6]

### Updated

-   Fixed the unitframe text to reset if reinstalling the NoobTacoUI profile over a different profile.

## [1.3.5]

### Updated

-   Updated the Readme
-   Changed the main font
-   Buff and Debuff are cleaned up
-   NoobTacoUI install now respects your choice for Aura Bar or Icons while in the ElvUI installation. If you would like to change at any time just re-run the ElvUI install and chose the option you want.
-   Cleaned up some version code.

### Added

-   Added 3 new fonts. Dosis, Exo2 and Mukta

## [1.3.4]

### Updated

-   Combat indicator was moved to lower left of Unit Frame
-   Classbar will now show outside of combat.
-   Cleaned up pet name code
-   Fixed normal font and size so text does not wrap around on the character screen. If you wish to adjust the size type /ec and click on the tab up top that says Media. Change the Normal font and size there. Fixes Issue 28
-   Added logic to bring up the installer if new version.
-   Tweaks to party and raid frames to fix debuff override as well as make the icons ignore click through for click healing.
-   Changed default objective length to 400. If you need longer change in /ec, General, Blizzard UI Improvements

### Added

-   Automatically enable the new Talent Preview and Equipment Manger for WOTLK UI.

## [1.3.3]

### Updated

-   Cleaned up version checking code for Actionbars
-   Cleaned up version checking code for Totems
-   Target Debuffs cleaned up
-   Player debuffs cleaned up

### Added

-   Added font styling for the tooltip header that was added to the base ElvUI
-   Added WOTLK Classic support
-   Updating Build process.
-   Pet Experience Bar

## [1.3.2]

### Updated

## [1.3.1]

-   Bumped Retail TOC to support 9.2

-   TOC updated to latest game version for Classic, TBC and Retail

### Updated

## [1.3.2]

## [1.3.0]

### Updated

-   TOC updated to latest game version for Classic, TBC and Retail
-   Left and Right Cluster location adjusted
-   Debuff and Buff direction has been fixed.
-   Updated nameplate and chat bubble text.

### Added

## [1.2.5]

-   [UPDATE] - Focus frame now has been given the NoobTacoUI treatment.

## [1.2.4]

### Updated

-   Tweaked background to have a little transparency.

### Added

-   Updated the TOC files for packaging as one file instead of several.

## [1.2.3]

### Updated

-   Classic Client TOC for new patch 1.13.7

## [1.2.2]

### Fixed

-   25 and 40 man raid frames had a bug that caused double party frames. Issue should be resolved now.

## [1.2.1]

### Changed

-   Moved XP and Rep bar to side of chat.

### Fixed/Updated

-   Hotkey font and placement

## [1.2.0]

This is the initial release for NoobTacoUI for TBC Classic.
Please report any issues to our github issue tracker.

### Added

-   TBC Classic support
-   Combo Class points added to target nameplate.
-   Totembar for TBC

### Fixed/Updated

-   Bar 2 now has 12 buttons
-   New logic for finding which client we are on.
-   Healing profile has had some work done.

### Changed

-   Target casting bar is not on the target frame
-   Player XP bar is now above bars.
-   Player XP bar will hide once at max level

## [1.1.11]

### Fixed

-   Changed chat font to bold instead of semi-bold
-   Changed Aura bars to be on.

### Added

-   [Classic] Enabled Energy Mana Regen Tick for player unitframe.
-   [Classic] Added pet happiness icon. Will not load for retail.

## [1.1.10] - 2021-03-25

### Fixed

-   Fixed the scaling issue between retail and classic.
-   Fixed missing fonts on actionbars
-   Corrected the order of bars. Top bar is the same as bottom left in wow UI

### Changed

-   A couple of tweaks to the bottom layout.
-   Added a new mouse over bar left of the right chat frame.

## [1.1.8] - 2020-11-13

### Fixed

-   Player untiframe power text fixed and staying in the right place!
-   Added some flags to hopefully fix 40 man raid size. If you happen to see 2 raid frames up in DPS/Tank mode try /rl to fix this issue. Seems the ElvUI Smart Group function can get hung if combat starts before switching.
-   Adjusted the text on the installer to read "DPS or Tank" to be more clear.

## [1.1.7] - 2020-11-07

### Fixed

-   Added font data for the changes made to ElvUI 12.1 (Thanks Az ;-) )

## [1.1.6] - 2020-11-05

### Changed

-   XP bar show during combat.
-   Extended XP bar
-   Moved side action bars down and closer to main cluster.
-   Alt Power bar moved.

## [1.1.4] - 2020-10-28

### Changed

-   Moved the BG score overlay on top of screen
-   Adjusted the mirror timer bar locations.

### Added

-   Profile settings for Healer specs with lower centered party and raid frames.
-   Party frame format
-   Raid frame
-   40 Player Raid

## [1.1.3] - 2020-10-26

### Added

-   Options to turn the elite dragon overlay on or off.

### Fixed

-   Added ElvUI Norm bar texture on install to fix any other profile that changed bar textures.

## [1.1.2] - 2020-10-25

### Fixed

-   Missed a directory for overlay. Should display properly now.

## [1.1.1] - 2020-10-25

### Fixed

-   Media font's where still pointing to NoobTacoUI-Media, causing an exception/error.

## [1.1.0] - 2020-10-25

### Added

-   Included NoobTacoUI-Media into core profile addon.
    -   Added Elite Overlay
    -   Added Google fonts
        -   Montserrat
        -   Lato
        -   Roboto

## [1.0.4] - 2020-10-23

### Fixed

-   Secondary actionbars were visible while in a vehicle. They now disappear. Check the visibility of individual action bars to change to your preference.

## [1.0.3] - 2020-10-23

### Changed

-   Cleaned up Actionbar code

### Added

-   Logic to allow the use of the installer in Classic.

## [1.0.2] - 2020-10-23

### Changed

-   Cleaning up for packager

## [1.0.1] - 2020-10-22

### Changed

-   Removing .git folders and preparing for automated update.

## [1.0.0] - 2020-10-22

### Changed

-   Initial Upload
