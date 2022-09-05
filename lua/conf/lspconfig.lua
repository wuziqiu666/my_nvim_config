vim.diagnostic.config({
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,

	virtual_text = {
		source = "always", -- Or "if_many"
		prefix = "⚡︎", -- Could be '●', '▎', 'x','■'
	},
	float = {
		source = "always", -- Or "if_many"
	},
})
--
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- vim.cmd([[ autocmd! CursorHold * lua PrintDiagnostics() ]])

vim.cmd([[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]])
