-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme catppuccin_mocha")
--local status, _ = pcall(vim.cmd, "colorscheme catppuccin_mocha")
-- vim.opt.background = "light"
-- local status, _ = pcall(vim.cmd, "colorscheme PaperColor")
local status, _ = pcall(vim.cmd, "colorscheme catppuccin_mocha")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
