-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = false


map("n", "<Space>", ":NvimTreeToggle<CR>", { silent = true })



-- empty setup using defaults
require("nvim-tree").setup()

