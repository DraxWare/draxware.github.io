# Digital's Library

Take A Look At The [Library Source](Source.lua) Here

Take A Look At The [Library Rawed Source](https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Digitals-Library/Source.lua) Here
## Getting My Library
```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Digitals-Library/Source.lua'))();
```

## Creating Window

```lua
local Window = Library:NewWindow('Hub', 'Name')
```

| parameters   | Type              | Information                  | In-Depth Description |
|:-------------|:------------------|:-----------------------------|:---------------------|
| 1            | `<String>`        | First Name of the Ui         | None                 |
| 2            | `<String>`        | Second Name of the Ui        | None                 |

## Creating Sections
```lua
local Section = Tab:NewSection('Section')
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the section. | None |

## Creating Labels Without Icons
```lua
local Label = Section:Text('Label', '')
```

| parameters   | Type               | Information    | In-Depth Description |
|:-------------|:-------------------|:---------------|:---------------------|
| 1            | `<String>`         | Label Text. | None |
| 2            | `<rbxlink>`        | Icon Link . | None |

## Creating Labels With Icon
```lua
local Label = Section:Text('Label', 'rbxassetid://11924548499')
```

| parameters   | Type               | Information    | In-Depth Description |
|:-------------|:-------------------|:---------------|:---------------------|
| 1            | `<String>`         | Label Text. | None |
| 2            | `<rbxlink>`        | Icon Link . | None |

## Creating Inline Labels
```lua
local LineLabel = Section:h1('Inline Label', false)
```

| parameters   | Type               | Information    | In-Depth Description |
|:-------------|:-------------------|:---------------|:---------------------|
| 1            | `<String>`         | Label Text.            | None |
| 2            | `<Bool>`           | Hide Text From Inline. | None |

## Creating Lines
```lua
local Label = Section:h1('', true)
```

| parameters   | Type               | Information    | In-Depth Description |
|:-------------|:-------------------|:---------------|:---------------------|
| 1            | `<String>`         | Label Text (Dont Matter Since Its Just A Line.| None |
| 2            | `<Bool>`           | Hide Text From Inline.                        | None |

## Creating Buttons
```lua
Section:Button('Button', function()
    print('Button Pressed')
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the button. | None |
| 2            | `<Function>`        | Function / Callback. | When Pressed, The button will fire the function, or Callback |

## Creating Sliders
```lua
local Slider = Section:Slider('Slider', 1, 100, function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the slider.  | None |
| 2            | `<Number>`        | Minimum value.       | None |
| 3            | `<Number>`        | Maximum value.       | None |
| 4            | `<Function>`      | Function / Callback. | When Slider Is Slided, It will fire the function, or Callback |

## Creating Textboxes
```lua
Section:Box('Textbox', function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the textbox. | None |
| 2            | `<Function>`        | Function / Callback. | When the text is set, it will fire the function or Callback |

## Creating Keybinds
```lua
local Keybind = Section:Bind('Keybind', Enum.KeyCode.A, false, function()
    print('Key Pressed')
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the keybind. | None |
| 2            | `<String>`        | Default Keycode.     | Find all [KeyCodes here:](https://developer.roblox.com/en-us/api-reference/enum/KeyCode) |
| 3            | `<Bool>`          | Fire Only Once.      | Just Keep it off, Unless you want the bind trigger function to be fired when the user changes the keybind|
| 4            | `<Function>`      | Function / Callback. | When Keybind Is Pressed, It will fire the function, or Callback |

## Creating Toggles
```lua
local Toggle = Section:Toggle('Toggle', function(Value)
    print(Value)
end)
```

| parameters   | Type                | Information    | In-Depth Description |
|:-------------|:--------------------|:---------------|:---------------------|
| 1            | `<String>`          | Name of the toggle. | None |
| 2            | `<Function>`        | Function / Callback. | When Toggle On / Off, It will fire the function, or Callback |

## Creating Dropdowns
```lua
Section:Drop('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, function(Value)
    print(Value)
end)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<String>`        | Name of the dropdown. | None |
| 2            | `<Table>`         | Dropdown List. | None |
| 3            | `<Function>`      | Function / Callback. | When the item is selected, It will fire the function, or Callback |

## Changing Ui Toggle Keybind
```lua
Library:SetBind(Enum.KeyCode.LeftControl)
```

| parameters   | Type              | Information | In-Depth Description |
|:-------------|:------------------|:------------|:---------------------|
| 1            | `<Enum KeyCode>`  | Editable.   | None |

## Update UI Transparency
```lua
Library:SetTransparency(0.5, true)
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:---------------|:---------------------|
| 1            | `<Number>`        | New Transparency. | None |
| 2            | `<Bool>`        | Alert. | If true, an alert will pop up saying that the transparency will change, else not. |

## Detroy Ui
```lua
Library:Destroy()
```

# Example Script

```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Digitals-Library/Source.lua'))();

local Window = Library:NewWindow('Hub Name', false)

local Section = Window:NewSection('Section')
local UpdatesSection = Window:NewSection('Updates')

local Label = Section:CreateLabel('Label','');
local Hover = Section:CreateLabel('Label With Icon', 'rbxassetid://11924548499');

local Drop = UpdatesSection:Drop('Dropdown', {'PlayerUndefined1', 'PlayerUndefined2', 'PlayerUndefined3', 'PlayerUndefined4', 'PlayerUndefined5'}, function(Value)
    print(Value)
end)

Section:h1('The Button Below This Wont Work Lmao', false)

UpdatesSection:Button('Update Players', function()
    print('Button Clicked')
end)

Section:Button('Button', function()
    print('Button Pressed')
end)

Section:Slider('Slider', 1, 100, function(Value)
    print(Value)
end)

Section:Box('Textbox', function(Value)
    print(Value)
end)

Section:CreateKeybind('Keybind', Enum.KeyCode.A, false, function()
    print('Key Pressed')
end)

Section:Toggle('Toggle', function(Value)
    print(Value)
end)

Section:Drop('Dropdown', {'Bread', 'Kitten', 'ROBLOX', 'JohnDoe', '5'}, function(Value)
    print(Value)
end)

Section:h1('', true)
Section:CreateLabel('Wow Look At Me!','');
Section:h1('', true)

```
