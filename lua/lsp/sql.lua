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
})
