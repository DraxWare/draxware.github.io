# Tokyo Ui Library Documentation

Take A Look At The [Library Source](Source.lua) Here

Take A Look At The [Library Rawed Source](https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Tokyo-Ui-Library/Source.lua) Here

## Getting The Library - Manual Set
```lua
local Library = loadstring(http.request({
    Url = 'https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Tokyo-Ui-Library/Source.lua',
    Method = 'GET',
}).Body)({
    cheatname = 'Cheat Name',
    gamename = 'A Roblox Game', --[[Dont use this and the ui will set it for you]]
    fileext = '.txt', --[[Dont use this and the ui will set it for you]]
})
```
## Getting The Library - Auto Set
```lua
local Library = loadstring(http.request({
    Url = 'https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Tokyo-Ui-Library/Source.lua',
    Method = 'GET',
}).Body)({
    cheatname = 'Cheat Name'
})
```

## Initializing the library
```lua
Library:init();
```

## Creating Window

```lua
local Window = Library:CreateWindow({title='Hub Name'})
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:----------------------|:---------------------|
| 1            | `<Table>`         |Table conten. title, eg| None                 |
| 2            | `<String>`        | Ur Hub or window Name | None                 |

## Creating Tabs
```lua
local Tab = Window:CreateTab('Tab', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the tab. | None |

## Creating Sections
```lua
local Section = Tab:CreateSection('Section')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the section. | None |

## Tool Tips
Can Be Set To, Labels, Paragraphs, Buttons, Sliders, TextBoxes, Keybinds, Toggles, And Dropdowns.
```lua
-- [[
    Can Be Set At The End Of Parameters of Shown Above Settings.
]]

local Applicable = Labels or Paragraphs
local ApplicableWithFunctions = Buttons or Sliders or TextBoxes or Keybinds or Toggles or Dropdowns

Applicable:Applicable(--[[args1,args2,'args3',]]true,'This Feature Is Useless') -- When hovered, 'This Feature Is Useless' will be shown at users pointer. Basically Add it at the end of any Applicable Label Or Paragraph.

ApplicableWithFunctions:ApplicableWithFunctions(--[['args1',args2,function(args3)
    print('T)
end,]] true,'This Feature Is Useless') -- When hovered, 'This Feature Is Useless' will be shown at users pointer. Basically Add it at the end of any Applicable Feature with a function at the end of the function.
```

| parameters   | Type                | Information             | In-Depth Description |
|:-------------|:--------------------|:------------------------|:---------------------|
| ?            | `<Optional Bool>`   | Something ToolTip Enabler. | Can Be Set To true, false. |
| ?            | `<Optional String>` | Something ToolTip Text.    | When Mouse Hovering, It will display additional information to the user. |

## Creating Labels
```lua
local Label = Section:CreateLabel('Label')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Label Text. | None |

## Creating Buttons - Method 1
```lua
Section:CreateButton('Button', function()
    print('Button Pressed')
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the button. | None |
| 2            | `<Function>`        | Function / Callback. | When Pressed, The button will fire the function, or Callback |

## Creating Buttons - Method 2
```lua
Section:CreateButton({
    enabled = true,
    text = 'Name',
    confirm = false,
    risky = false,
    callback = function()
        print('Test Manual button')
    end,
    flag = 'Special_Identifier'
})
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:------------------------------|:---------------------|
| 1            | `<Boolean>`       | Whether the button is active. | None |
| 2            | `<String>`        | Button Text.                  | None |
| 3            | `<Boolean>`       | Confirm before executing      | Makes the user double read before confirming |
| 4            | `<Boolean>`       | risky option                  | Warns the user if they could get banned or resetted or lag |
| 5            | `<Function>`      | function / callback.          | When Pressed, The button will fire the function, or Callback  |
| 6            | `<String>`        | Flag                          | Use this flag ident to find ur button quicker or for special configs|

## Creating Sliders
```lua
local Slider = Section:CreateSlider('Slider', 1, 100, 50, false, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the slider. | None |
| 2            | `<Number>`        | Minimum value. | None |
| 3            | `<Number>`        | Maximum value. | None |
| 4            | `<Number>`        | Default value. | None |
| 5            | `<Bool>`        | Precise Numbers. | goes from {0,1,2,4,5} to {0.01,0.02,0.03,0.04,0.05} |
| 6            | `<Color3>`        | Color of the Slider. | None |
| 7            | `<Function>`        | Function / Callback. | When Slider Is Slided, It will fire the function, or Callback |

## Updating Sliders
```lua
Slider:SetValue(Value)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Number>`        | Slider New Value. | Slider will update to this value |

## Creating Textboxes
```lua
Section:CreateTextbox('Textbox', 'TextGoesHere', function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the textbox. | None |
| 2            | `<String>`        | Placeholder Text.    | None |
| 3            | `<Function>`      | Function / Callback. | When the text is set, it will fire the function or Callback |

## Creating Keybinds
```lua
local Keybind = Section:CreateKeybind('Keybind', 'A', function()
    print('Key Pressed')
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the keybind. | None |
| 2            | `<String>`        | Default Keycode. | For Mouse Bind Use "Left Mouse", "Right Mouse". Find all [KeyCodes here:](https://developer.roblox.com/en-us/api-reference/enum/KeyCode) |
| 3            | `<Function>`        | Function / Callback. | When Keybind Is Pressed, It will fire the function, or Callback |

## Updating Keybinds
```lua
Keybind:SetBind(Keycode)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | New Keycode. | Find All [Keycodes here:](https://developer.roblox.com/en-us/api-reference/enum/KeyCode)

## Reading Keybinds
```lua
Keybind:ReadKeybind()
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Output>`        | Keycode. | Mouse Button will appear as MouseButton1 or MouseButton2. The output for regular keycodes are "A, B, C, D." |

## Creating Toggles
```lua
local Toggle = Section:CreateToggle('Toggle', true, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the toggle. | None |
| 2            | `<Bool>`        | Default value. | if true the toggle will be loaded on and it will fire the function / callback |
| 3            | `<Color3>`        | Color of the toggle. | The color will be applied when toggled |
| 4            | `<Number>`        | Debounce. | Time taken for the toggle animation |
| 5            | `<Function>`        | Function / Callback. | When Toggle On / Off, It will fire the function, or Callback |

## Updating Toggles
```lua
Toggle:Set(Value)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Bool>`        | Toggle value. | Toggle can be turned on / off firing the function / callback |

## Creating Dropdowns
```lua
Section:CreateDropdown('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, 'Kitten', false, 0.25, function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the dropdown. | None |
| 2            | `<Table>`         | Dropdown List. | None |
| 3            | `<Any>`           | Default value. | Put nil for default dropdown option, if its not zero, it must be of the same type as the table's item; for instance, the dropdown menu is {'Kitten'}, so the dropdown will be 'Kitten' Firing The Function / Callback |
| 4            | `<Bool>`        | Enable Search Tool. | If your list its too big, you can enable this feature allowing your customers to search for items within the drop down |
| 5            | `<Number>`        | Debounce. | The time taken for opening / closing animation |
| 6            | `<Function>`        | Function / Callback. | When the item is selected, It will fire the function, or Callback |

## Updating Dropdowns
```lua
Dropdown:UpdateDropdown({'Filter', 'Spoon', 'Fork'})
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Table>`        | New List. | New list's of dropdown options |

## Creating Colorpickers
```lua
Colorpicker = Section:CreateColorpicker('Colorpicker', Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the Colorpicker. | None |
| 2            | `<Color3>`        | Default Color. | Colorpicker will be loaded and firing the Function / Callback with the given Color |
| 3            | `<Number>`        | Debounce. | Time taken for the opening  closing animation |
| 4            | `<Function>`        | Function / Callback. | When Color is slided, It will fire the function, or Callback |

## Updating Colorpicker
```lua
Colorpicker:SetColor(Color3)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Color3>`        | New Color. | example : Color3.fromRGB(255,255,255) |


## Creating Notifications
creates a variety of Notifications on the side of the screen.
```lua
Library:CreateNotification('Red Text', 5, Color3.new(1,0,0))
```

| parameters   | Type              | Information       | In-Depth Description |
|:-------------|:------------------|:------------------|:---------------------|
| 1            | `<String>`        | Text.             | None |
| 2            | `<Number>`        | Time Out.         | None |
| 3            | `<Color3>`        | NotificationColor | The time until the notification fades away |

## Toggle Ui
```lua
Library:SetOpen(not Library.open)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Optional>`        | Editable. | Can be triggered through a dropdown, button, keybind, and or slider ? xd |

## Destroy Ui
```lua
Library:Unload()
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Optional>`        | Editable.    | Can be triggered through a dropdown, button, keybind, and or slider ? xd |

## Creating / Saving Configs
```lua
Library:SaveConfig('Config')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Config Name. | If a config with the given name already exists, it will ask a prompt to bypass (overwriting it) or cancel the proccess. |


## Getting A Config
```lua
Library:GetConfig('Config')
```

## Loading Configs
```lua
Library:LoadConfig('Config')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Config Name. | The given config name will be loaded |

## Themes

## Changing Themes
```lua
Library:SetTheme('Default')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>, <Table>`        | Optional. | This is optional, can either use a custom theme or the name of the theme you want to switch it to. |


## Changing Theme Colors
Add this code to your UI in a section if you want to create a custom theme from within the user interface.
```lua
Library:CreateSettingsTab(Window)
```

# Example Script

```lua
do
end
```
