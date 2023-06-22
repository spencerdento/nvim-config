vim.g.mapleader = ";"
vim.g.localleader = ","
vim.cmd(":setlocal spell spelllang=en_us")


function map(mode, lhs, rhs, opts)
	local options = { noremap = true }	
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end



require('packer-plug')
require('mappings')


