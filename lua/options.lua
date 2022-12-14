vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.shell = "/bin/zsh"
vim.o.nu = true
vim.o.rnu = true
vim.o.scrolloff = 4
vim.o.spell = true
vim.o.spelloptions = "camel"
-- vim.o.spelllang = "en_us"


vim.api.nvim_create_augroup("setnu", {
	clear = false,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	group = "setnu",
	command = "set nornu",
})

vim.api.nvim_create_autocmd("InsertLeave", {
	group = "setnu",
	command = "set rnu",
})
