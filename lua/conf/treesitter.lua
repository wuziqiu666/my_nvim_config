require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "java" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	--[[
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
--]]
})
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldminlines = 2
vim.opt.foldlevel = 1
vim.opt.foldlevelstart = 99
