vim.g["mkdp_echo_preview_url"] = 0
vim.g["mkdp_open_to_the_world"] = 1
vim.g["mkdp_open_ip"] = "127.0.0.1"
vim.g["mkdp_port"] = "8909"
vim.g["mkdp_command_for_global"] = 1

vim.cmd([[
function! g:Open_browser(url)
    let s:tmp = substitute(a:url, "127.0.0.1:8909", "markdownpreview.founsword.cn", "")
    silent exec "!open ".a:url
    echo s:tmp
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'
]])
