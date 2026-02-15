-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 2.1.1 - Minor upgrade
    Version 2.1.0 - Blizzard Damage Meter Integration (Retail/Midnight)
        - Added official damage meter enablement in Step 4 of the installer
        - Improved window management with initialization delays and creation loops
        - Fixed Lua errors by transitioning to damageMeterEnabled CVar
        - Refined chat unification and skinning for Blizzard Damage Meter windows

    Version 2.0.2 - Damage Meter Positioning
        - Implemented customized, shared positioning and sizing for Blizzard and Details! damage meter windows
        - Added a "Configure Damage Meters" toggle in the Edit Mode options

    Version 2.0.1 - Modernization Refactor
        - Implemented modern ElvUI Engine access pattern using named keys
        - Renamed internal module reference to NoobTacoUIElv for clarity

    Version 2.0.0 - Midnight Upgrade
        - Major upgrade for ElvUI Midnight (14.x) and WoW 12.0
        - Verified all database pathing and API compliance

    Version 1.5.6 - Profile management improvements
        - Added dialog pop-up for creating a new ElvUI profile
        - Separated toggle options for elite overlay and interaction

    Version 1.5.5 - Nameplates improvements
        - Updated the colors for class resources combo points
        - Fixed an issue with nameplate visibility in certain scenarios

    Version 1.5.2 - Installation improvements
        - Refactored installation process
        - Fixed issues with the installation process

    Version 1.5.0 - Initial setup and configuration
        - Added initial setup and configuration for the addon
]]
-- Don't worry about this
local addon, Engine, _ = ...
-- local Version = GetAddOnMetadata(addon, "Version")
local Version = C_AddOns.GetAddOnMetadata(addon, "Version")

-- Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic


-- Change this line and use a unique name for your plugin.
-- Change this line and use a unique name for your plugin.
local MyPluginName = "NoobTacoUI-ElvUI"
local MyPluginTitle = "|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r"

-- Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

-- Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

-- Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0")
local NoobTacoUIElv = mod -- Use the same module instance
NoobTacoUIElv.MyPluginName = MyPluginName

-- Expansions
NoobTacoUIElv.IsClassic = E.Classic or E.Cata or E.Mists
NoobTacoUIElv.IsRetail = E.Retail
NoobTacoUIElv.IsMidnight = E.Retail and (select(4, GetBuildInfo()) >= 120000)

Engine.NoobTacoUIElv = NoobTacoUIElv
Engine.E = E
Engine.L = L
Engine.V = V
Engine.P = P
Engine.G = G
_G[addon] = Engine

-- Runs for the step questioning the user if they want a new ElvUI profile
local function NewProfile(new)
    if (new) then -- the user clicked "Create New" create a dialog pop up
        E.PopupDialogs["CreateProfileNameNew"] = {
            text = L["Name for the new profile"],
            button1 = L["Accept"],
            button2 = L["Cancel"],
            hasEditBox = true,
            whileDead = 1,
            hideOnEscape = 1,
            timeout = 0,
            OnShow = function(self, data)
                self.editBox:SetText("NoobTacoUI-ElvUI") -- default text in the editbox
            end,
            OnAccept = function(self, data, data2)
                local text = self.editBox:GetText()
                ElvUI[1].data:SetProfile(text) -- ElvUI function for changing profiles, creates a new profile if name doesn't exist
                PluginInstallStepComplete.message = "Profile Created"
                PluginInstallStepComplete:Show()
            end
        }
        E:StaticPopup_Show("CreateProfileNameNew") -- tell our dialog box to show
    elseif (new == false) then                     -- the user clicked "Use Current" create a dialog pop up
        E.PopupDialogs["ProfileOverrideConfirm"] = {
            text = "Are you sure you want to override the current profile?",
            button1 = "Yes",
            button2 = "No",
            OnAccept = function()
                PluginInstallStepComplete.message = "Profile Selected"
                PluginInstallStepComplete:Show()
            end,
            timeout = 0,
            whileDead = true,
            hideOnEscape = true
        }
        E:StaticPopup_Show("ProfileOverrideConfirm") -- tell our dialog box to show
    end
end

-- Setup the Layout
local function SetupLayout()
    -- Turn on new WOTLK features
    SetCVar("equipmentManager", 1)
    SetCVar("previewTalents", 1)

    NoobTacoUIElv:SetupNamePlates()
    NoobTacoUIElv:SetupLayout()
    NoobTacoUIElv:SetupDatabars()
    NoobTacoUIElv:SetupBags()
    NoobTacoUIElv:SetupChat()
    NoobTacoUIElv:SetupGeneral()
    NoobTacoUIElv:SetupAuras()
    NoobTacoUIElv:SetupCooldowns()
    NoobTacoUIElv:SetupTooltips()
    NoobTacoUIElv:SetupActionBars()
    NoobTacoUIElv:SetupGuildNotes()

    NoobTacoUIElv:SetupMovers()
    NoobTacoUIElv:ApplyEditModeLayout()

    E:UpdateAll(true)

    -- Show message about layout being set
    PluginInstallStepComplete.message = "Layout Set"
    PluginInstallStepComplete:Show()
end

-- INSTALATION COMPLETE - Set version and overlay status ------------------------------
local function InstallComplete()
    if GetCVarBool("Sound_EnableMusic") then
        StopMusic()
    end

    -- Set a variable tracking the version of the addon when layout was installed
    E.db[MyPluginName].install_version = Version


    -- Set the key for Interaction
    E.db[MyPluginName].enableInteraction = true

    ReloadUI()
end

-- PLUGIN INSTALLER -----------------------------------------------------------------
local Pages = {
    [1] = function()
        PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginTitle)
        PluginInstallFrame.Desc1:SetText(
            "This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process."
        )
        PluginInstallFrame.Desc2:SetText(
            "Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button."
        )
        PluginInstallFrame.Option1:Show()
        PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
        PluginInstallFrame.Option1:SetText("Skip Process")
    end,
    [2] = function()
        PluginInstallFrame.SubTitle:SetText("Profiles")
        PluginInstallFrame.Desc1:SetText(
            "You have the option to either create a new profile specifically for NoobTacoUI installation or apply NoobTacoUI settings to your current profile"
        )
        PluginInstallFrame.Desc3:SetText(
            "Your currently active ElvUI profile is: |cffc41f3b" .. ElvUI[1].data:GetCurrentProfile() .. "|r"
        )
        PluginInstallFrame.Option1:Show()
        PluginInstallFrame.Option1:SetScript(
            "OnClick",
            function()
                NewProfile(false)
            end
        )
        PluginInstallFrame.Option1:SetText("Update Current")
        PluginInstallFrame.Option2:Show()
        PluginInstallFrame.Option2:SetScript(
            "OnClick",
            function()
                NewProfile(true)
            end
        )
        PluginInstallFrame.Option2:SetText("Create New")
    end,
    [3] = function()
        PluginInstallFrame.SubTitle:SetText(L["General Layout of NoobTacoUI"])
        PluginInstallFrame.Desc1:SetText(L["This is the recommended base layout for NoobTacoUI."])
        PluginInstallFrame.Desc2:SetText(L["This will set some general settings for the layout installation"])
        PluginInstallFrame.Desc3:SetFormattedText(L["Importance: |cffFF0000High|r"])

        PluginInstallFrame.Option1:Show()
        PluginInstallFrame.Option1:SetScript(
            "OnClick",
            function()
                SetupLayout()
            end
        )
        PluginInstallFrame.Option1:SetText("Set Layout")

        -- Integration Check
        NoobTacoUIElv:SetupIntegration()
    end,
}

local StepTitles = {
    [1] = "Welcome",
    [2] = "Profiles",
    [3] = "General Layout",
}

if NoobTacoUIElv.IsMidnight then
    Pages[4] = function()
        PluginInstallFrame.SubTitle:SetText("Damage Meters")
        PluginInstallFrame.Desc1:SetText(
            "Would you like to enable the new Blizzard damage meter? This will also create a second window so we can move and skin it side-by-side. \n\n|cffFF0000Warning:|r This will disable the right chat box and move all channels to the main chat box.")
        PluginInstallFrame.Desc2:SetText(
            "If you choose not to enable the meters, you will retain the default ElvUI chat layout.")

        PluginInstallFrame.Option1:Show()
        PluginInstallFrame.Option1:SetScript("OnClick", function() NoobTacoUIElv:SkinDamageMeters() end)
        PluginInstallFrame.Option1:SetText("Skin Meters")
    end
    StepTitles[4] = "Damage Meters"
end

local lastPage = #StepTitles + 1
Pages[lastPage] = function()
    PluginInstallFrame.SubTitle:SetText("Installation Complete")
    PluginInstallFrame.Desc1:SetText(
        "You have completed the installation process.\nIf you need help or wish to report a bug, please go to http://tukui.org"
    )
    PluginInstallFrame.Desc2:SetText(
        "Please click the button below in order to finalize the process and automatically reload your UI. \nLog out of character is needed for all fonts to update."
    )
    PluginInstallFrame.Option1:Show()
    PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
    PluginInstallFrame.Option1:SetText("Finished")
end
StepTitles[lastPage] = "Installation Complete"

local InstallerData = {
    Title = format("%s |cff4beb2cInstallation|r %s", MyPluginTitle, Version),
    Name = MyPluginName,
    tutorialImage = "Interface\\AddOns\\NoobTacoUI-ElvUI\\Media\\Textures\\noobtaco.tga",
    Pages = Pages,
    StepTitles = StepTitles,
    StepTitlesColor = { 1, 1, 1 },
    StepTitlesColorSelected = { 0, 179 / 255, 1 },
    StepTitleWidth = 200,
    StepTitleButtonWidth = 180,
    StepTitleTextJustification = "RIGHT"
}

-- This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
    E.Options.args.MyPluginName = {
        order = 100,
        type = "group",
        name = format("|cff4beb2c%s|r", MyPluginTitle),
        get = function(info)
            return E.db[MyPluginName][info[#info]]
        end,
        set = function(info, value)
            E.db[MyPluginName][info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            header1 = {
                order = 1,
                type = "header",
                name = format("%s - Ver %s", MyPluginTitle, Version)
            },
            description1 = {
                order = 2,
                type = "description",
                name = format("%s is a layout for ElvUI.", MyPluginTitle)
            },
            spacer1 = {
                order = 3,
                type = "description",
                name = "\n\n\n"
            },
            header2 = {
                order = 4,
                type = "header",
                name = "Options"
            },
            description3 = {
                order = 7,
                type = "description",
                name = "These are various tweaks that can be applied to the layout and game."
            },
            tweaks = {
                order = 8,
                type = "group",
                name = "Interaction",
                guiInline = true,
                args = {
                    enableInteraction = {
                        order = 2,
                        type = "toggle",
                        name = L["Enable Interaction"],
                        desc = L[
                        "Disable/Enable the interaction option in wow. This will ensure it stays on throughout sessions."
                        ]
                    }
                }
            },
            editmode = {
                order = 9,
                type = "group",
                name = "Edit Mode",
                guiInline = true,
                args = {
                    description = {
                        order = 1,
                        type = "description",
                        name =
                        "If you need to re-apply changes to line up the cooldown manager or damage meters after installation, you can press the Apply Edit Mode button below.",
                        width = "full",
                    },
                    applyEditMode = {
                        order = 2,
                        type = "execute",
                        name = "Apply Edit Mode",
                        desc = "Apply the WoW Edit Mode layout for NoobTacoUI.",
                        func = function()
                            NoobTacoUIElv:ApplyEditModeLayout()
                        end
                    },
                    spacer1 = {
                        order = 3,
                        type = "description",
                        name = "\n",
                    },
                    configureDamageMeters = {
                        order = 4,
                        type = "toggle",
                        name = "Configure Damage Meters",
                        desc = "Enable/Disable custom positioning and sizing for damage meter windows.",
                        hidden = function() return not NoobTacoUIElv.IsMidnight end,
                    },
                    noteDamageMeters = {
                        order = 5,
                        type = "description",
                        name =
                        "|cffFF0000Note:|r Creating a second damage meter window allows for proper side-by-side skinning and alignment. Click Apply Edit Mode again to setup",
                        width = "full",
                        hidden = function() return not NoobTacoUIElv.IsMidnight end,
                    },
                }
            },
            header4 = {
                order = 9,
                type = "header",
                name = "Installation"
            },
            description2 = {
                order = 10,
                type = "description",
                name =
                "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below."
            },
            spacer2 = {
                order = 11,
                type = "description",
                name = ""
            },
            install = {
                order = 12,
                type = "execute",
                name = "Install",
                desc = "Run the installation process.",
                func = function()
                    E:GetModule("PluginInstaller"):Queue(InstallerData)
                    E:ToggleOptions()
                end
            }
        }
    }
end

-- Create a unique table for our plugin
P[MyPluginName] = {
    configureDamageMeters = true,
}

-- This function will handle initialization of the addon
function mod:Initialize()
    -- Initiate installation process if ElvUI install is complete and our plugin install has not yet been run
    if E.private.install_complete and E.db[MyPluginName].install_version == nil then
        E:GetModule("PluginInstaller"):Queue(InstallerData)
    elseif E.private.install_complete and E.db[MyPluginName].install_version < Version then
        E:GetModule("PluginInstaller"):Queue(InstallerData)
    end

    -- Insert our options table when ElvUI config is loaded
    EP:RegisterPlugin(addon, InsertOptions)

    -- Initialize GuildNotes
    NoobTacoUIElv:SetupGuildNotes()

    -- check if enableInteraction is true or false
    if E.db[MyPluginName].enableInteraction then
        E:SetCVar("SoftTargetInteract", 3)
    else
        E:SetCVar("SoftTargetInteract", 0)
    end

    -- Enforce Damage Meter layout (persistent on login/reload) - Only on Midnight (12.0+)
    if NoobTacoUIElv.IsMidnight and E.db[MyPluginName].configureDamageMeters and NoobTacoUIElv.ConfigureDamageMeters then
        NoobTacoUIElv:ConfigureDamageMeters()
    end
end

-- Register module with callback so it gets initialized when ready
E:RegisterModule(mod:GetName())
