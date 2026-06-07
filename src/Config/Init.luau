local ConfigLibrary = {}

-- configs will save the following:
-- - CurrentValues (dropdown selected, toggle selected, slider selected, viewport pos, color picker, keybind state and key, textbox input, grid picker)
-- - Visual Values (dropdown option, slider min max, text label items, image label and viewport items) IF SPECIFIED
-- - selected tab
-- - selected groupbox
-- - position of windows
-- - window size
-- - key sys key
-- WILL NOT SAVE
-- - anything on elements with the IgnoreConfig attribute/property
-- - anything from CustomWindows

function ConfigLibrary:CreateInterface() end

function ConfigLibrary:LoadConfig() end

function ConfigLibrary:SaveConfig() end

function ConfigLibrary:DeleteConfig() end

function ConfigLibrary:AutoloadConfig() end

function ConfigLibrary:ClearAutoload() end

return ConfigLibrary
