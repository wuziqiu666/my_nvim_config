require("lspconfig").sqls.setup({
	cmd = {
		"sqls",
		"-config",
		"/Users/wuziqiu/lsp/mysql/config.yml",
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
