-- Don't worry about this
local addon, Engine, ns = ...
-- local Version = GetAddOnMetadata(addon, "Version")
local Version = C_AddOns.GetAddOnMetadata(addon, "Version")

-- Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic

-- Expansions
-- E.Retail = E.Retail
-- E.Classic = E.Classic
-- E.TBC = E.TBC
-- E.Wrath = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC

-- Change this line and use a unique name for your plugin.
local MyPluginName = "|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r"

-- Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

-- Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

-- Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0")
local NoobTacoUI = E:NewModule(addon, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0")

Engine[1] = NoobTacoUI
Engine[2] = E
Engine[3] = L
Engine[4] = V
Engine[5] = P
Engine[6] = G
_G[addon] = Engine

-- Runs for the step questioning the user if they want a new ElvUI profile
local function NewProfile(new)
    if (new) then -- the user clicked "Create New" create a dialog pop up
        StaticPopupDialogs["CreateProfileNameNew"] = {
            text = L["Name for the new profile"],
            button1 = L["Accept"],
            button2 = L["Cancel"],
            hasEditBox = 1,
            whileDead = 1,
            hideOnEscape = 1,
            timeout = 0,
            OnShow = function(self, data)
                self.editBox:SetText("NoobTacoUI") -- default text in the editbox
            end,
            OnAccept = function(self, data, data2)
                local text = self.editBox:GetText()
                ElvUI[1].data:SetProfile(text) -- ElvUI function for changing profiles, creates a new profile if name doesn't exist
                PluginInstallStepComplete.message = "Profile Created"
                PluginInstallStepComplete:Show()
            end
        }
        StaticPopup_Show("CreateProfileNameNew", "test") -- tell our dialog box to show
    elseif (new == false) then -- the user clicked "Use Current" create a dialog pop up
        StaticPopupDialogs["ProfileOverrideConfirm"] = {
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
        StaticPopup_Show("ProfileOverrideConfirm", "test") -- tell our dialog box to show
    end
end

-- Setup the Layout
local function SetupLayout()
    -- Turn on new WOTLK features
    SetCVar("equipmentManager", 1)
    SetCVar("previewTalents", 1)

    NoobTacoUI:SetupNamePlates()
    NoobTacoUI:SetupLayout()
    NoobTacoUI:SetupDatabars()
    NoobTacoUI:SetupBags()
    NoobTacoUI:SetupChat()
    NoobTacoUI:SetupGeneral()
    NoobTacoUI:SetupAuras()
    NoobTacoUI:SetupCooldowns()
    NoobTacoUI:SetupTooltips()
    NoobTacoUI:SetupActionBars()

    NoobTacoUI:SetupMovers()

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

    -- Set the key for Overlay
    E.db[MyPluginName].overlay = true

    ReloadUI()
end

-- PLUGIN INSTALLER -----------------------------------------------------------------
local InstallerData = {
    Title = format("|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r |cff4beb2cInstallation|r %s", Version),
    Name = MyPluginName,
    tutorialImage = "Interface\\AddOns\\NoobTacoUI\\media\\Textures\\noobtaco.tga",
    Pages = {
        [1] = function()
            PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
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
            PluginInstallFrame.Option1:SetText("Use Current")
            PluginInstallFrame.Option2:Show()
            PluginInstallFrame.Option2:SetScript(
                "OnClick",
                function()
                    NewProfile(true, "NoobTacoUI")
                end
            )
            PluginInstallFrame.Option2:SetText("Create New")

            PluginInstallFrame.SubTitle:SetText("Profiles")
            PluginInstallFrame.Desc1:SetText(
                'Press "Update Current" to update your current profile with the NoobTacoUI changes.'
            )
            PluginInstallFrame.Desc2:SetText(
                'If you\'d like to check out what the changes are, without overwriting your current settings, you can press "Create New"'
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
                    NewProfile(true, "ThinkTankkUI-Update")
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
        end,
        [4] = function()
            PluginInstallFrame.SubTitle:SetText("Layouts")
            PluginInstallFrame.Desc1:SetText(
                "These are the layouts that are available. Please click a button below to apply the layout of your choosing."
            )
            PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")

            -- Option1
            PluginInstallFrame.Option1:Show()
            PluginInstallFrame.Option1:SetScript(
                "OnClick",
                function()
                    NoobTacoUI:SetupUnitFrames("v1")
                end
            )
            PluginInstallFrame.Option1:SetText("DPS or Tank")

            -- Option2
            PluginInstallFrame.Option2:Show()
            PluginInstallFrame.Option2:SetScript(
                "OnClick",
                function()
                    NoobTacoUI:SetupUnitFrames("v2")
                end
            )
            PluginInstallFrame.Option2:SetText("Healer")

            -- Integration Check
            NoobTacoUI:SetupIntegration()
        end,
        [5] = function()
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
    },
    StepTitles = {
        [1] = "Welcome",
        [2] = "Profiles",
        [3] = "General Layout",
        [4] = "Layouts",
        -- [5] = "Nameplate",
        [5] = "Installation Complete"
    },
    StepTitlesColor = {1, 1, 1},
    StepTitlesColorSelected = {0, 179 / 255, 1},
    StepTitleWidth = 200,
    StepTitleButtonWidth = 180,
    StepTitleTextJustification = "RIGHT"
}

-- This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
    E.Options.args.MyPluginName = {
        order = 100,
        type = "group",
        name = format("|cff4beb2c%s|r", MyPluginName),
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
                name = format("|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r - Ver %s", Version)
            },
            description1 = {
                order = 2,
                type = "description",
                name = format("%s is a layout for ElvUI.", MyPluginName)
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
            general = {
                order = 5,
                type = "group",
                -- name = MER:cOption(L["General"]),
                name = "General",
                guiInline = true,
                args = {
                    overlay = {
                        order = 1,
                        type = "toggle",
                        name = L["Elite Overlay Dragon Flight Style"],
                        desc = L["Disable/Enable the elite dragon overlay for the target."]
                    }
                }
            },
            header3 = {
                order = 6,
                type = "header",
                name = "Installation"
            },
            description2 = {
                order = 7,
                type = "description",
                name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below."
            },
            spacer2 = {
                order = 8,
                type = "description",
                name = ""
            },
            install = {
                order = 9,
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
P[MyPluginName] = {}

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
end

-- Register module with callback so it gets initialized when ready
E:RegisterModule(mod:GetName())
