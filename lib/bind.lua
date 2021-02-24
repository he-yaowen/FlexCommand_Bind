local _, FlexCommand_Bind = ...

FlexCommand_Bind.bind = {}

local bindingOwnerFrame = CreateFrame("Frame")

local buttonIndex = 1

--- Create a action button frame for key binding.
-- @return action button frame
--
local function CreateButtonFrame()
    local frame = CreateFrame("Button", "FlexCommand_Bind_ActionButton" .. buttonIndex, UIParent, "SecureActionButtonTemplate")
    buttonIndex = buttonIndex + 1

    return frame
end

--- Set key binding to an action.
-- @param key key to bind
-- @param action action name
--
FlexCommand_Bind.bind.SetActionBinding = function(key, action)
    SetOverrideBinding(bindingOwnerFrame, true, key, action)
end

--- Set key binding to a spell.
-- @param key key to bind
-- @param spell spell name
--
FlexCommand_Bind.bind.SetSpellBinding = function(key, spell)
    local frame = CreateButtonFrame()

    frame:SetAttribute("type", "spell")
    frame:SetAttribute("spell", spell)

    SetOverrideBindingClick(bindingOwnerFrame, true, key, frame:GetName())
end

--- Set key binding to an item.
-- @param key key to bind
-- @param item item name
--
FlexCommand_Bind.bind.SetItemBinding = function(key, item)
    local frame = CreateButtonFrame()

    frame:SetAttribute("type", "item")
    frame:SetAttribute("item", item)

    SetOverrideBindingClick(bindingOwnerFrame, true, key, frame:GetName())
end

--- Set key binding to run a macrotext.
-- @param key key to bind
-- @param macrotext text of macro
--
FlexCommand_Bind.bind.SetMacroTextBinding = function(key, macrotext)
    local frame = CreateButtonFrame()

    frame:SetAttribute("type", "macro")
    frame:SetAttribute("macrotext", macrotext)

    SetOverrideBindingClick(bindingOwnerFrame, true, key, frame:GetName())
end