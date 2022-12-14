local util = require("formatter.util")
local format_path = vim.g["format_path"]
local java_path = vim.g["java_path"]

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		require("formatter.filetypes.javascript")["google-java-format-1"],
		java = {
			function()
				return {
					exe = java_path,
					args = {
						"-jar",
						vim.fn.glob(format_path .. "google-java-format-*-all-deps.jar"),
						"--aosp",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
			function()
				-- Supports conditional formatting
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end

				-- Full specification of configurations is down below and in Vim help
				-- files
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
		sql = {
			function()
				return {
					exe = "sql-formatter",
					args = {
						"--language",
						"mysql",
					},
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
		json = {
			function()
				return {
					exe = "jq",
					args = {
						"--indent",
						"4",
					},
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
		sh = {
			function()
				return {
					exe = "shfmt",
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
		md = {
			function()
				return {
					exe = "mdformat",
					stdin = true,
					cwd = util.get_current_buffer_file_dir(),
				}
			end,
		},
        python = {
            function()
                return {
                    exe = "/usr/local/bin/yapf",
                    stdin = true,
					cwd = util.get_current_buffer_file_dir(),
                }
            end,
        },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.api.nvim_create_augroup("FormatAutogroup", {
	clear = true,
})
--[[
vim.api.nvim_create_autocmd("BufWritePost", {
	group = "FormatAutogroup",
	pattern = { "*" },
	command = "FormatWrite",
})
--]]
