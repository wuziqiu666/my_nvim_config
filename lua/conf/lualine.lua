require("lualine").setup({
	options = {
		theme = "OceanicNext",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
        extensions = {
            'nvim-tree'
        }
	},
})
