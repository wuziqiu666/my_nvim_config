local mysql_path = vim.g["mysql_path"]

require("lspconfig").sqls.setup({
	cmd = {
		"sqls",
		"-config",
		mysql_path .. "config.yml",
	},
	filetypes = {
		"sql",
		"mysql",
		"xml",
	},
	on_attach = function(client, bufnr)
		require("sqls").on_attach(client, bufnr)
	end,
})

--[[
require("lspconfig").sqlls.setup({})
--]]
