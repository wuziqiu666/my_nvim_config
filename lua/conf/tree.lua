require("nvim-tree").setup({
	sort_by = "case_sensitive",
	auto_reload_on_write = true,
	sync_root_with_cwd = true,
	hijack_cursor = true,
	reload_on_bufenter = true,
	view = {
		side = "left",
		adaptive_size = false,
		hide_root_folder = true,
		preserve_window_proportions = false,
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
	diagnostics = {
		enable = true,
	},
	actions = {
		open_file = {
			quit_on_open = true,
			resize_window = true,
		},
	},
})
