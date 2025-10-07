---
applyTo: '**'
---
# NoobTacoUI AI Development Instructions

## Project Overview
This is a World of Warcraft addon providing shared media assets (fonts, audio, textures) and a modern, modular configuration interface. The addon uses LibSharedMedia-3.0 for compatibility and features a Nord-themed UI with collection notification and sound systems.

## Core Architecture Patterns

### UI Framework
- **Nord Theme Integration**: Always use `Media.UIAssets.Colors.NordX` color references
- **Modular Components**: Create reusable functions following `CreateEnhanced*` naming pattern
- **Consistent Spacing**: Use defined constants `PADDING`, `INNER_PADDING`, `SECTION_SPACING`
- **Frame Hierarchy**: Main frame → Header/Sidebar/Content → Panels → Scroll frames → Content

### Custom Scroll Frames
Use `CreateNordScrollFrame()` for all scrollable content:
```lua
local scrollFrame = CreateNordScrollFrame(parentFrame)
scrollFrame:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)
scrollFrame:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", 0, 0)
local content = scrollFrame.scrollChild
-- Add content to scrollChild
```

## Development Standards

### Color Usage (Nord Theme)
- **Backgrounds**: Nord0 (darkest) → Nord3 (lightest dark)
- **Text**: Nord4 (body) → Nord6 (bright text)
- **Accents**: Nord7-Nord10 (blues/cyans for highlights)
- **Status**: Nord11-Nord15 (red/orange/yellow/green/purple for states)

### Typography Hierarchy
- **Main Headers**: `GameFontNormalLarge` in Nord8 (cyan)
- **Section Headers**: `GameFontNormal` in Nord13 (yellow) or Nord14 (green)
- **Body Text**: `GameFontNormal` in Nord4/Nord5 (light grays)
- **Interactive Elements**: Nord8 highlights, Nord2 backgrounds

### Spacing Constants
```lua
local PADDING = 16          -- Main container padding
local INNER_PADDING = 12    -- Internal element padding
local SECTION_SPACING = 24  -- Between major sections
```

### Database Integration
- **Global Storage**: Use `NoobTacoUIDB` for account-wide settings
- **Structure**: `NoobTacoUIDB.CollectionNotifications` for notification settings
- **Validation**: Always check if tables exist before accessing
- **Callbacks**: Use `addon.CallbackRegistry` for settings changes

## UI Component Patterns

### Creating Enhanced Panels
```lua
local panel = CreateEnhancedSettingsPanel(
  parentFrame,
  "Panel Title",
  "Panel description text"
)
```

### Creating Category Buttons
```lua
local button = CreateEnhancedCategoryButton(sidebar, "Button Text", iconData)
button:SetPoint("TOPLEFT", previousButton, "BOTTOMLEFT", 0, -4)
```

### Adding Scrollable Content
1. Create scroll frame: `local scrollFrame = CreateNordScrollFrame(panel)`
2. Position scroll frame within panel bounds
3. Use `scrollFrame.scrollChild` for content
4. Call `scrollFrame.UpdateScrollThumb()` after content changes

## Code Organization

### File Structure
- **Main Logic**: `modules/ConfigMenu.lua` - Enhanced configuration interface
- **Assets**: `Media/UIAssets.lua` - Nord colors, textures, fonts
- **Audio System**: Collection notifications and sound management
- **Documentation**: `dev/docs/ENHANCED_MENU_SYSTEM.md` - Complete technical guide

### Function Naming
- **UI Creators**: `CreateEnhanced*` (CreateEnhancedSettingsPanel, CreateNordScrollFrame)
- **Utilities**: `addon.UIUtils:*` for reusable UI helpers
- **Settings**: `GetDBValue()`, `SetDBValue()` for database operations
- **Callbacks**: `addon.CallbackRegistry:RegisterCallback()`

### Event Handling
- **Frame Events**: Use proper event registration/unregistration
- **Settings Changes**: Trigger callbacks for UI updates
- **Audio Testing**: Provide preview functionality for all sounds

## Best Practices

### Performance
- **Lazy Loading**: Create panels only when first accessed
- **Efficient Updates**: Use targeted refresh functions
- **Memory Management**: Proper frame cleanup and reference handling

### User Experience
- **Visual Feedback**: Hover states, selection indicators, smooth transitions
- **Accessibility**: Consistent contrast ratios, readable text sizes
- **Responsive Design**: Handle different UI scales and screen sizes

### Code Quality
- **Error Handling**: Check for nil values, validate inputs
- **Documentation**: Comment complex logic and UI patterns
- **Consistency**: Follow established patterns for similar functionality

## Audio System Guidelines

### Sound Management
- **LibSharedMedia Integration**: Register all sounds with LSM
- **Preview Functions**: Always provide test/preview capabilities
- **Dropdown Population**: Use LSM to populate sound selection lists
- **Validation**: Check sound existence before playback

### Collection Notifications
- **Event Registration**: Hook into collection achievement events
- **Sound Mapping**: Map collection types to specific audio files
- **User Control**: Granular enable/disable options
- **Persistence**: Save sound preferences to database

## Extension Patterns

### Adding New Settings
1. Add to database structure with defaults
2. Create UI elements following Nord theme
3. Implement change callbacks
4. Add validation and error handling
5. Update documentation

### New UI Sections
1. Use `CreateEnhancedSettingsPanel()` for consistent styling
2. Add to sidebar with `CreateEnhancedCategoryButton()`
3. Position relative to existing buttons
4. Use `CreateNordScrollFrame()` if content might overflow
5. Follow established spacing and color patterns

## Common Pitfalls to Avoid

### UI Development
- Don't hardcode colors - always use Nord theme references
- Don't skip scroll frame for potentially long content
- Don't forget to call `UpdateScrollThumb()` after content changes
- Don't use inconsistent spacing - stick to defined constants

### Settings Management
- Don't access database directly - use helper functions
- Don't forget default value validation
- Don't skip callback registration for UI updates
- Don't assume settings tables exist - always validate

### Audio Integration
- Don't bypass LibSharedMedia for sound registration
- Don't forget preview/test functionality
- Don't hardcode sound names - use database settings
- Don't skip sound file existence validation

## Testing Checklist
- [ ] All panels load without errors
- [ ] Settings persist across sessions
- [ ] Audio preview functions work
- [ ] UI scales properly at different resolutions
- [ ] Nord theme colors display correctly
- [ ] Scroll frames function smoothly
- [ ] Error handling works for edge cases

## Documentation Requirements
When making changes:
1. Update technical documentation in `dev/docs/`
2. Add comments for complex UI patterns
3. Document new configuration options
4. Update README.md for user-facing changes
5. Include examples for reusable components

This instruction set ensures consistency with the established Nord-themed, modular architecture while maintaining high code quality and user experience standards.
