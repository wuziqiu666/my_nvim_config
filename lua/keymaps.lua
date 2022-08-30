require("conf.multiple_cursor")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.formatting()
end, { silent = true })

-------dap
vim.keymap.set("n", "<leader>b", function()
    require("dap").toggle_breakpoint()
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>B", function()
    require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>bl", function()
    require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gr", function()
    require("dap").repl.open()
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>g", function()
    require("dap").continue()
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gi", function()
    require("dap").step_into()
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>go", function()
    require("dap").step_over()
end, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gu", function()
    require("dap").step_out()
end, { silent = true, noremap = true })
---------------dap

vim.api.nvim_create_user_command("Debug", function()
    require("jdtls.dap").setup_dap_main_class_configs()
    require("dap").continue()
end, {})
--[[
vim.keymap.set("n", ":Debug", function()
    if vim.bo.filetype == 'java' then
        require('jdtls.dap').setup_dap_main_class_configs()
        require'dap'.continue()
    end
end, { silent = true, noremap = true })
--]]

vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files()
end, { noremap = true })
vim.keymap.set("n", "<leader>fg", function()
    require("telescope.builtin").live_grep()
end, { noremap = true })
vim.keymap.set("n", "<leader>fb", function()
    require("telescope.builtin").buffers()
end, { noremap = true })
vim.keymap.set("n", "<leader>fh", function()
    require("telescope.builtin").help_tags()
end, { noremap = true })
vim.keymap.set("n", "<leader>fo", function()
    require("telescope.builtin").oldfiles()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fa", ":Telescope aerial<CR>", { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "∆", ":m .+1<CR>==")
vim.keymap.set("n", "˚", ":m .--1<CR>==")
vim.keymap.set({ "n", "i", "v" }, "<C-]>", function()
    vim.lsp.buf.definition()
end, { noremap = true })
vim.keymap.set({ "n", "i", "v" }, "gd", function()
    vim.lsp.buf.definition()
end, { noremap = true })
vim.keymap.set({ "n", "i", "v" }, "gD", function()
    vim.lsp.buf.declaration()
end, { noremap = true })
vim.keymap.set("n", "<leader>rn", function()
    vim.lsp.buf.rename()
end, { noremap = true })
vim.keymap.set("n", "<C-[>", ":bp", { noremap = true })
vim.keymap.set("n", "<leader>e", function()
    vim.diagnostic.setloclist()
end, { noremap = true })
vim.keymap.set("n", "<C-.>", function()
    vim.lsp.buf.code_action()
end, { noremap = true })
vim.keymap.set("n", ".", function()
    vim.lsp.buf.hover()
end, { noremap = true })
vim.keymap.set("n", "gr", function()
    vim.lsp.buf.references()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>i", function()
    vim.lsp.buf.implementation()
end, { noremap = true })
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<C-a>", ":AerialToggle! right<CR>", { noremap = true })
