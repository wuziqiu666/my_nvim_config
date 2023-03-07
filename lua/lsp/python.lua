require'lspconfig'.pyright.setup{
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = false,
                typeCheckingMode = 'base'
            }
        }

    }
}
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')


