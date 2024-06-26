vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- update buffers when files updated(git checkout).
keymap.set("n", "<leader>u", "<cmd>:bufdo e!<cr>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- comment
-- "numToStr/Comment.nvim"
-- n gcc -- comment line
-- v gcc -- comment lines

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
keymap.set("v", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
-- "christoomey/vim-tmux-navigator"
-- n <leader>sv -- split window vertical
-- n <leader>sh -- split window horizontally
-- n <leader>h,j,k,l -- move between windows
keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>")
keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>")
keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>")
keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>")

-- tabs management
keymap.set("n", "<leader>t", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>x", ":q<CR>") -- close current tab
keymap.set("n", "<leader>xa", ":%bd<CR>") -- close all current tabs
keymap.set("n", "<A-[>", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<A-]>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>dt", ":tab split<CR>") -- duplicate current tab
keymap.set("n", "<leader>cf", ":let @*=fnamemodify(expand('%'), ':~:.') <CR>") -- copy current relative file path

----------------------
-- Plugin Kymaps
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- troubles
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>") -- open troubles

-- ray-x golang
keymap.set("n", "gfs", "<cmd>GoFillStruct<cr>")
