require("nvim-tree").setup({
	sort_by = "case_sensitive",
	auto_reload_on_write = true,
	view = {
		side = "left",
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "<C-[>", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
