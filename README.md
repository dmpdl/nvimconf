# Configuration For Neovim.

## How add new plugin.
Consider the example of adding a new plugin
`ray-x/go.nvim`.
First you need to add plugin name in `lua/dmpdl/plugins-setup.lua`:
```lua
return packer.startup(function(use)
    -- other plugins...
	use("ray-x/go.nvim")
	use("ray-x/guihua.lua")
```
Save file and wait until packer install or updates
plugins.

Next specify plugin configuration. Make new file
for plugin setup `lua/dmpld/plugins/ray-x.lua`.
Write plugin setup in created file. Default setup.
```lua
require("go").setup()
```
Or you can override default configuration.
```lua
require("go").setup({
  disable_defaults = false, -- true|false when true set false to all boolean settings and replace all table
  -- settings with {}
  go='go', -- go command, can be go[default] or go1.18beta1
  goimport='gopls' -- goimport command, can be gopls[default] or goimport
  -- and so on
})
```
You can also use protected call if you dont want nvim
will throw errors if something is wrong with the plugin.
```lua
local setup, go = pcall(require, "go")
if not setup then
	return
end

go.setup()
```

Specify keymaps in `lua/dmpdl/core/keymaps.lua`
```lua
-- ray-x golang
keymap.set("n", "gfs", "<cmd>GoFillStruct<cr>")
```

Add created plugin configuration in `init.lua`.
```lua
require("dmpdl.plugins.ray-x")
```
