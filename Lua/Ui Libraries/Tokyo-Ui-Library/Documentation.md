# Tokyo Ui Library Documentation

Take A Look At The [Library Source](Source.lua) Here

Take A Look At The [Library Rawed Source](https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Tokyo-Ui-Library/Source.lua) Here

## Getting The Library
```lua
local Library = loadstring(http.request({Url='https://raw.githubusercontent.com/DraxWare/draxware.github.io/refs/heads/main/Lua/Ui%20Libraries/Tokyo-Ui-Library/Source.lua',Method='GET'}).Body)();
```

## Initializing the library
```lua
Library:init();
```

## Creating Window

```lua
local Window = Library.NewWindow({
    title = "Title",
    size = UDim2.new(0, 510, 0.6, 6)
});
```

| parameters   | Type              | Information    | In-Depth Description |
|:-------------|:------------------|:----------------------|:---------------------|
| 1            | `<String>`        | Name of the Ui        | None                 |
| 2            | `<Udim2>`         | Size                  | Window size          |


## MORE COMING SOON
