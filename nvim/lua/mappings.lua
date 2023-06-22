
vim.opt.nu = true

vim.keymap.set({"i", "v"}, "<leader><leader>", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", function() vim.opt.relativenumber = not vim.o.rnu end, { noremap = true, silent = true })

-----------------------Diagnostics------------------------------------------
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>ee', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>e[', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>e]', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>eq', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '<leader>eh', vim.diagnostic.hide, opts)
vim.keymap.set('n', '<leader>es', vim.diagnostic.show, opts)


------------------------ Windows (n)/(w) ------------------------------------
--
-- (n)ew (n)ew
map("n", "<leader>nn", ":new<CR>", { silent = true })

-- (n)ew (v)ertical
map("n", "<leader>nv", ":vnew<CR>", { silent = true })

-- (w)indows
map("n", "<leader>j", ":wincmd j<CR>", { silent = true })
map("n", "<leader>k", ":wincmd k<CR>", { silent = true })
map("n", "<leader>l", ":wincmd l<CR>", { silent = true })
map("n", "<leader>h", ":wincmd h<CR>", { silent = true })

------------------------ Buffers (b) ------------------------------------
--
-- (b)uffer (n)ext
map("n", "<leader>bn", ":bn<CR>", { silent = true })

-- (b)uffer (p)revious
map("n", "<leader>bp", ":bp<CR>", { silent = true })

-- (b)uffer (d)elete
map("n", "<leader>bd", ":bd<CR>", { silent = true })

-- (b)uffer (k)ill
map("n", "<leader>bk", ":bd!<CR>", { silent = true })

-----------------LSP Stuff----------------------------------------
-- 
--(s)how (l)sp 
vim.keymap.set('n', '<leader>sl', vim.lsp.buf.hover, opts)

--(g)et (d)efinition
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)

--(g)et (c)ompletion
vim.keymap.set('n', '<leader>gc', vim.lsp.buf.completion, opts)


vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
