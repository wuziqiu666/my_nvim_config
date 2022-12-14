local cmp = require("cmp")
local lspkind = require("lspkind")

local kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "ﴯ",
	Interface = "",
	Module = "",
	Property = "ﰠ",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

cmp.setup({

	formatting = {

		format = lspkind.cmp_format({
			maxwidth = 50,
			mode = "symbol_text",
			menu = {
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				latex_symbols = "[Latex]",
			},
		}),
	},
})
-- Source

-- format = function(entry, vim_item)
-- Kind icons
-- vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind

-- vim_item.menu = ({
-- 	buffer = "[Buffer]",
-- 	nvim_lsp = "[LSP]",
-- 	luasnip = "[LuaSnip]",
-- 	nvim_lua = "[Lua]",
-- 	latex_symbols = "[LaTeX]",
-- })[entry.source.name]

-- return vim_item
-- end,
-- },
-- })
