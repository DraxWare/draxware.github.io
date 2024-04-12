# Jon's Ui Library Documentation

Take A Look At The [Library Source](Source.lua) Here

Take A Look At The [Library Rawed-Source](https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua) Here
## Getting My Library
```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua'))();
```

## Creating Window

```lua
local Window = Library:CreateWindow('Hub Name', false)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:----------------------|:---------------------|
| 1            | `<String>`        | Name of the Ui        | None                 |
| 2            | `<Bool>`          | Disable Custom Themes | if true, themes will be disabled, if false, themes will be enabled (this setting is to increase performance) |

## Creating Tabs
```lua
local Tab = Window:CreateTab('Tab', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the tab. | None |
| 2            | `<Bool>`          | Tab visibility.  | When the GUI loads, just the enabled tab will be visible if all other tabs are disabled |
| 3            | `<String>`        | Tab Image URL | None |
| 4            | `<Vector2>`       | Tab image rectoffset | None |
| 5            | `<Vector2>`       | Tab image rectsize | None |

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

something:CreateSomething(args1,args2,'args3',true,'This Feature Is Useless') -- When hovered, 'This Feature Is Useless' will be shown at users pointer.

something:CreateSomething('args1',args2,function(args3)
    dosomething()
end, true,'This Feature Is Useless') -- When hovered, 'This Feature Is Useless' will be shown at users pointer.
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

## Updating Labels
```lua
Label:UpdateLabel('New Text')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | New label text. | None |

## Creating Paragraphs
```lua
local Paragraph = Section:CreateParagraph('Paragraph', 'Content')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Title of the paragraph. | None |
| 2            | `<String>`        | Content of the paragraph. | None |

## Updating Paragraphs
```lua
Paragraph:UpdateParagraph('New Title', 'New Text')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | New Title of the paragraph. | None |
| 2            | `<String>`        | New Content of the paragraph. | None |

## Creating Buttons
```lua
Section:CreateButton('Button', function()
    print('Button Pressed')
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the button. | None |
| 2            | `<Function>`        | Function / Callback. | When Pressed, The button will fire the function, or Callback |

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
Slider:Set(Value)
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
| 2            | `<String>`        | Placeholder Text. | None |
| 3            | `<Function>`        | Function / Callback. | When the text is set, it will fire the function or Callback |

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
Keybind:Set(Keycode)
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
Colorpicker:Set(Color3)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Color3>`        | New Color. | example : Color3.fromRGB(255,255,255) |

## Creating Images
```lua
local Image = Section:CreateImage('Name', 'rbxassetid://11912754017', UDim2.new(0, 250, 0, 250))
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the Image. | None |
| 2            | `<String>`        | Asset Id. | None |
| 3            | `<UDim2>`         | Size. | None |

## Updating Images
```lua
Image:UpdateImage('rbxassetid://11912754017', UDim2.new(0, 200, 0, 200))
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | New Asset Id. | None |
| 2            | `<UDim2>`         | New Size. | None |

## Creating Notifications
creates a variety of Notifications on the side of the screen.
```lua
Library:CreateNotification('Notification Title', 'Notification Text', 5)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Title. | None |
| 2            | `<String>`        | Text. | None |
| 3            | `<Number>`        | Time. | The time until the notification fades away |

## Creating Prompts
creates a Notification with several types inside the UI.

# Just Text
```lua
Library:CreatePrompt('Text', 'Prompt Title', 'Prompt Text', 'Okay')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Type. | Currently you can do "Text", "OneButton", "TwoButton" |
| 2            | `<String>`        | Title. | None |
| 3            | `<String>`        | Text. | None |
| 4            | `<String>`        | Button Name. | (No Call Back) |

# One Button
```lua
Library:CreatePrompt('OneButton', 'Prompt Title', 'Prompt Text', {
    'Okay',
    function()
        print('Prompt Button Pressed')
    end
})
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Type. | Currently you can do "Text", "OneButton", "TwoButton" |
| 2            | `<String>`        | Title. | None |
| 3            | `<String>`        | Text. | None |
| 4            | `<Table>`         | `1.) <String> The Name Of the button 2.) <Function> CallBack / Function` | Once Button Is Pressed, It'll Callback it |

| Example Of 4 | In-Depth Example |
|:-------------|:-----------------|
| `<Table> { <String> , <Function> }` | `{"ButtonName", function()print("Clicked")end}`

# Two Buttons
```lua
UIFunctions:CreateButton('Create Two Button Prompt', function()
    Library:CreatePrompt('TwoButton', 'Prompt Title', 'Prompt Text', {
        'Button 1',
        function()
            print('Button 1')
        end,
        'Button 2',
        function()
            print('Button 2')
        end
    })
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Type. | Currently you can do "Text", "OneButton", "TwoButton" |
| 2            | `<String>`        | Title. | None |
| 3            | `<String>`        | Text. | None |
| 4            | `<Table>`         | `1.) <String> The Name Of the button 2.) <Function> CallBack / Function` | Once Button Is Pressed, It'll Callback it |

| Example Of 4 | In-Depth Example |
|:-------------|:-----------------|
| `<Table> { <String> , <Function> }` | `{"FirstButtonName", function()print("Clicked")end,"SecondButtonName",function()print("Clicked 2")end}` |

## Toggle Ui
```lua
Library:ToggleUI()
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Optional>`        | Editable. | Can be triggered through a dropdown, button, keybind, and or slider ? xd |

## Update UI Transparency
```lua
Library:SetTransparency(0.5, true)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Number>`        | New Transparency. | None |
| 2            | `<Bool>`        | Alert. | If true, an alert will pop up saying that the transparency will change, else not. |

## Creating / Saving Configs
```lua
Library:SaveConfig('Config')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Config Name. | If a config with the given name already exists, it will ask a prompt to bypass (overwriting it) or cancel the proccess. |


## Getting All Configs
```lua
Library:GetConfigs()
```

## Deleting Configs
```lua
Library:DeleteConfig('Config')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Config Name. | The given config will be deleted, if it doesn't exist. it will catch the error. |

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
Library:ChangeTheme('Default')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>, <Table>`        | Optional. | This is optional, can either use a custom theme or the name of the theme you want to switch it to. |

## Getting All Themes
```lua
Library:GetThemes()
```

## Changing Theme Colors
Add this code to your UI in a section if you want to create a custom theme from within the user interface.
```lua
for Index, CurrentColor in next, Library:ReturnTheme() do
    ThemesSection:CreateColorpicker(Index, CurrentColor, 0.25, function(color)
        Library:ChangeColor(Index, color)
    end, {true});
end  
```

# Example Script

```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Jonatanortiz2/home/main/Roblox-Projects/Jons-Ui-Library/Source.lua'))();

local Window = Library:CreateWindow('Hub Name', false)

local Tab = Window:CreateTab('Tab', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))
local Updates = Window:CreateTab('Updates', true, 'rbxassetid://4483362458', Vector2.new(0, 0), Vector2.new(0, 0))

local Section = Tab:CreateSection('Section')
local UpdatesSection = Updates:CreateSection('Updates')

local Label = Section:CreateLabel('Label')
local Hover = Section:CreateLabel('Hoverable',true,'This is an example of hovering')

local Paragraph = Section:CreateParagraph('Paragraph', 'Content')

local Drop = UpdatesSection:CreateDropdown('Dropdown', {'PlayerUndefined1', 'PlayerUndefined2', 'PlayerUndefined3', 'PlayerUndefined4', 'PlayerUndefined5'}, 'PlayerUndefined1', true, 0.25, function(Value)
    print(Value)
end)

UpdatesSection:CreateButton('Update Players', function()
    spawn(function()
        local InsertTable={};
        for i,v in next, game.Players:GetPlayers() do
            table.insert(InsertTable,v.Name)
        end
        Drop:UpdateDropdown(InsertTable)
    end)
end)

Section:CreateButton('Button', function()
    print('Button Pressed')
end)

Section:CreateButton('Hover Me', function()
    print('Hover Me Button Pressed!')
end,true,'This is an example of hovering')

Section:CreateSlider('Slider', 1, 100, 50, false, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
Section:CreateSlider('Precise Slider', 1, 100, 50, true, Color3.fromRGB(0, 146, 214), function(Value)
    print(Value)
end)
Section:CreateTextbox('Textbox', 'TextGoesHere', function(Value)
    print(Value)
end)
Section:CreateKeybind('Keybind', 'A', function()
    print('Key Pressed')
end)
Section:CreateToggle('Toggle', true, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)
Section:CreateDropdown('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, 'Kitten', false, 0.25, function(Value)
    print(Value)
end)
Colorpicker = Section:CreateColorpicker('Colorpicker', Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    print(Value)
end)

local Image = Section:CreateImage('Name', 'rbxassetid://11912754017', UDim2.new(0, 250, 0, 250))

Library:CreatePrompt('OneButton', 'Prompt Title', 'Prompt Text', {
    'Okay',
    function()
        print('Prompt Button Pressed')
    end
})
Section:CreateButton('Create Two Button Prompt', function()
    Library:CreatePrompt('TwoButton', 'Prompt Title', 'Prompt Text', {
        'Button 1',
        function()
            print('Button 1')
        end,
        'Button 2',
        function()
            print('Button 2')
        end
    })
end)
```
