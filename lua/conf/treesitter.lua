require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "java" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
	group = vim.api.nvim_create_augroup("TS_FOLD_WORKAROUND", {}),
	callback = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldnestmax = 0
		vim.opt.foldminlines = 40
	end,
})
---ENDWORKAROUND
