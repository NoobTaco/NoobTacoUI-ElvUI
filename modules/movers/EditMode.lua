local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

local EditModeLayoutName = "NoobTacoUIElv"
local EditModeLayoutString =
"2 50 0 0 0 4 4 UIParent 0.0 -480.0 -1 ##$$%/&$'%)$+$,$ 0 1 0 6 0 MainActionBar 0.0 4.0 -1 ##$$%/&$'%(#,$ 0 2 0 8 2 MultiBarBottomLeft 0.0 4.0 -1 ##$$%/&$'%(#,$ 0 3 0 4 4 UIParent -20.0 160.0 -1 ##$$%/&$'%(#,$ 0 4 0 0 0 UIParent 771.4 -335.5 -1 ##$$%/&$'%(#,$ 0 5 0 0 0 UIParent 771.4 -304.5 -1 ##$$%/&$'%(#,$ 0 6 0 0 0 UIParent 771.4 -273.5 -1 ##$$%/&$'%(#,$ 0 7 0 0 0 UIParent 771.4 -242.5 -1 ##$$%/&$'%(#,$ 0 10 0 7 7 UIParent -365.6 44.0 -1 ##$$&&'% 0 11 0 7 7 UIParent -814.9 262.0 -1 ##$$&''%,# 0 12 0 1 1 UIParent -393.0 -962.0 -1 ##$$&('% 1 -1 0 4 4 UIParent 0.0 -394.0 -1 ##$#%# 2 -1 0 2 2 UIParent 0.0 0.0 -1 ##$#%( 3 0 0 1 1 UIParent -258.0 -797.0 -1 $#3# 3 1 0 0 0 UIParent 1102.0 -797.0 -1 %$3# 3 2 0 1 1 UIParent 260.0 -929.5 -1 %#&#3# 3 3 0 0 0 UIParent 502.0 -422.0 -1 '$(#)#-;.=/#1#3#5$6-7-7$ 3 4 0 0 0 UIParent 12.0 -494.0 -1 ,%-#.//#0#1$2(5$6(7-7$ 3 5 0 2 2 UIParent -261.2 -231.6 -1 &$*#3' 3 6 0 2 2 UIParent -2.0 -275.0 -1 -#.#/#4&5#6(7-7$ 3 7 0 4 4 UIParent -242.0 -421.5 -1 3# 4 -1 0 7 7 UIParent 0.0 402.0 -1 # 5 -1 0 7 7 UIParent 247.0 362.0 -1 # 6 0 1 2 0 MinimapCluster -10.0 -10.0 -1 ##$#%#&.(()( 6 1 0 0 0 UIParent 623.0 -472.0 -1 ##$$%#'((()(-$ 6 2 0 2 8 PlayerFrame -20.0 14.0 -1 ##$#%#&*(()(+#,-,$ 7 -1 0 1 1 UIParent 7.0 -162.0 -1 # 8 -1 0 4 4 UIParent -715.5 -394.0 -1 #'$4%$&e 9 -1 1 7 7 UIParent 0.0 45.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 0 1 1 UIParent 533.0 -682.0 -1 # 12 -1 0 1 1 UIParent 843.2 -270.6 -1 #7$#%# 13 -1 0 1 1 UIParent -346.3 -1010.6 -1 ##$#%&&, 14 -1 0 7 7 UIParent -515.2 1041.6 -1 ##$#%$ 15 0 0 1 7 MainActionBar -12.5 -4.0 -1 # 15 1 0 4 4 UIParent 0.0 -503.5 -1 # 16 -1 0 1 1 UIParent 369.0 -922.0 -1 #( 17 -1 1 1 1 UIParent 0.0 -100.0 -1 ## 18 -1 1 5 5 UIParent 0.0 0.0 -1 #- 19 -1 0 4 4 UIParent 0.0 415.8 -1 ## 20 0 0 7 7 UIParent 0.0 230.6 -1 ##$)%$&(''(-($)#+$,$-$ 20 1 0 7 7 UIParent 0.0 170.6 -1 ##$/%$&&''(-($)#+$,$-$ 20 2 0 1 1 UIParent 0.0 -750.6 -1 ##$$%$&'''(-($)#+$,$-$ 20 3 0 8 2 PlayerFrame -20.0 -12.0 -1 #$$$%#&''#(-($)$*#+$,$-$.P 21 -1 0 1 1 UIParent -280.0 -942.0 -1 #$$# 22 0 0 1 1 UIParent 469.5 -102.0 -1 #$$$%$&('((#)U*$+$,$ 22 1 0 7 7 UIParent 0.0 682.0 -1 &('()U*#+$ 22 2 0 1 1 UIParent 0.0 -182.0 -1 &('()U*#+$ 22 3 0 7 7 UIParent 0.0 822.0 -1 &('()U*#+$ 23 -1 0 1 1 UIParent 823.2 -870.6 -1 ##$%%$&#'y(&)U+$,$-#.&/#"

local function FindLayoutID(name)
  local layoutsList = C_EditMode.GetLayouts()
  local layouts = layoutsList and layoutsList.layouts
  if layouts then
    for _, layout in ipairs(layouts) do
      if (layout.layoutName or layout.name) == name then
        return layout.layoutID
      end
    end
  end
  return nil
end

function NoobTacoUIElv:ApplyEditModeLayout(isRetry)
  print("NoobTacoUIElv: ApplyEditModeLayout called" .. (isRetry and " (Retry)" or ""))
  if not NoobTacoUIElv.IsRetail then return end

  -- Ensure Blizzard Edit Mode is loaded
  if not _G.C_AddOns.IsAddOnLoaded("Blizzard_EditMode") then
    _G.C_AddOns.LoadAddOn("Blizzard_EditMode")
  end

  local layoutID = FindLayoutID(EditModeLayoutName)

  if layoutID then
    print("NoobTacoUIElv: Found existing layout, activating ID: " .. layoutID)
    C_EditMode.SetActiveLayout(layoutID)
    if _G.EditModeManagerFrame and _G.EditModeManagerFrame:IsShown() then
      _G.EditModeManagerFrame:OnEditModeExit()
    end
  else
    if isRetry then
      print("NoobTacoUIElv: Layout still not found after import attempt.")
      return
    end

    print("NoobTacoUIElv: Layout not found, attempting import...")
    if _G.EditModeManagerFrame and _G.EditModeManagerFrame.ImportLayout then
      _G.EditModeManagerFrame:ImportLayout(EditModeLayoutString)

      -- Short delay to let dialog initialize
      _G.C_Timer.After(0.2, function()
        local dialog = _G.EditModeImportLayoutDialog
        if dialog then
          print("NoobTacoUIElv: Automating Import Dialog")

          local importEditBox = dialog.ImportBox and dialog.ImportBox.EditBox
          if importEditBox then
            -- Safety fix for Blizzard crash: initialize cursorOffset if nil
            if importEditBox.cursorOffset == nil then
              importEditBox.cursorOffset = 0
            end

            importEditBox:SetText(EditModeLayoutString)
            print("NoobTacoUIElv: Set import string in ImportBox.EditBox")

            importEditBox:SetCursorPosition(0)

            -- We wrap these in a small delay to ensure SetText has finished.
            _G.C_Timer.After(0.1, function()
              -- Manually set the internal string Blizzard uses
              dialog.importText = EditModeLayoutString
              print("NoobTacoUIElv: Set dialog.importText manually")

              if dialog.OnImportTextChanged then
                -- Passing importEditBox as required by Blizzard's internal code
                print("NoobTacoUIElv: Calling OnImportTextChanged(importEditBox, false)")
                pcall(dialog.OnImportTextChanged, dialog, importEditBox, false)
              end

              if dialog.ProcessImportText then
                print("NoobTacoUIElv: Calling ProcessImportText()")
                pcall(dialog.ProcessImportText, dialog)
              end

              print("NoobTacoUIElv: layoutInfo after processing: " .. (dialog.layoutInfo and "SET" or "NIL"))

              -- Set the layout name
              local nameBox = dialog.LayoutNameEditBox
              if nameBox then
                nameBox:SetText(EditModeLayoutName)
                if nameBox:GetScript("OnTextChanged") then
                  pcall(nameBox:GetScript("OnTextChanged"), nameBox, false)
                end
                print("NoobTacoUIElv: Set layout name: " .. EditModeLayoutName)
              end

              -- Update button state
              if dialog.UpdateAcceptButtonEnabledState then
                pcall(dialog.UpdateAcceptButtonEnabledState, dialog)
              end

              -- Small delay then check accept button
              _G.C_Timer.After(0.2, function()
                local canAccept = false
                if dialog.CanAccept then
                  local success, result = pcall(dialog.CanAccept, dialog)
                  canAccept = result
                  print("NoobTacoUIElv: CanAccept() = " .. tostring(canAccept))
                end

                local acceptBtn = dialog.AcceptButton
                if acceptBtn then
                  local isEnabled = acceptBtn:IsEnabled()
                  print("NoobTacoUIElv: Accept button enabled: " .. tostring(isEnabled))

                  -- FORCE ENABLE fail-safe
                  if not isEnabled and nameBox and nameBox:GetText() ~= "" then
                    print("NoobTacoUIElv: FORCE ENABLING AcceptButton")
                    acceptBtn:SetEnabled(true)
                    isEnabled = true
                  end

                  if isEnabled then
                    acceptBtn:Click()
                    print("NoobTacoUIElv: Clicked accept, waiting 2s...")
                    _G.C_Timer.After(2, function()
                      NoobTacoUIElv:ApplyEditModeLayout(true)
                    end)
                  else
                    print("NoobTacoUIElv: Accept button still disabled")
                  end
                end
              end)
            end)
          else
            print("NoobTacoUIElv: ImportBox.EditBox not found")
          end
        else
          print("NoobTacoUIElv: Import dialog not found")
        end
      end)
    else
      print("NoobTacoUIElv: EditModeManagerFrame:ImportLayout missing")
    end
  end
end
