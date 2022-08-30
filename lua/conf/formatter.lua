local util = require("formatter.util")

require("formatter").setup({
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        java = {

            function()
                return {
                    exe = "java",
                    args = {
                        "-jar",
                        "/Users/wuziqiu/lsp/format/google-java-format-1.15.0-all-deps.jar",
                        "--aosp",
                        util.escape_path(util.get_current_buffer_file_path()),
                    },
                    stdin = true,
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
vim.api.nvim_create_autocmd("BufWritePost", {
    group = "FormatAutogroup",
    pattern = { "*" },
    command = "FormatWrite",
})
--]]
