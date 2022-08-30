require("conf.multiple_cursor")
vim.keymap.set("n", "<leader>f", function ()
    vim.lsp.buf.formatting()
end
, { silent = true })
vim.keymap.set("n", "<leader>b", function()
	require("dap").toggle_breakpoint()
end, { silent = true })

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
