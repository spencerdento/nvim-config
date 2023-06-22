-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require("cmp")

lsp.setup_nvim_cmp({
	mapping = lsp.defaults.cmp_mappings({
		['<leader>a'] = cmp.mapping.select_prev_item(),
		['<leader>s'] = cmp.mapping.select_next_item(),
	})
})


lsp.setup()
