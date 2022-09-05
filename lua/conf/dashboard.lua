vim.cmd([[
    highlight! DashboardHeader guibg=NONE guifg=#E5B1AE
]])
    -- highlight! DashboardHeader guibg=NONE guifg=#B08F26
local db = require("dashboard")
db.custom_header = {

	" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠉⠀⠀⠀⡜⠘⠀⣮⢽⢀⠀⠈⡄⠀⠀⡇⠸⠀⢀⠀⠀⠀⢡⠀⠀⠀⠈⣧ ⠀⠀⠀⠀⠀⠀⠀",
	"  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠃⡇⠀⠀⢰⠃⡆⢠⠏⢸⠘⠀⠀⠱⠀⢠⣧⠀⢇⠈⢆⠀⢠⠸⡀⠀⢀⡆⢸⡀⠀⠀⠀⠀⠀⠀⠀",
	"   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣮⠁⣇⠀⠀⡞⢠⠇⡘⠀⠈⡀⣧⠀⠀⠱⢼⣈⢧⡘⢣⡈⡄⢸⠀⡇⠀⢸⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀",
	"   ⠀⠀⠀⠀⠀ ⠀⠀⠸⡄⠀⢹⠀⢸⣷⣧⡾⡷⡶⢮⣵⡹⡳⢄⠀⠘⣻⣲⣵⣧⣟⣾⢸⡀⡃⠀⣴⠀⡸⢨⡆⠀⠀⠀ ⠀⠀",
	"   ⠀⠀⠀⠀⠀⠀⠀⢠⡇⡇⠀⢸⡀⡨⢹⠏⡔⢀⢿⣷⠹⠊⠓⠀⠈⠀⢻⠋⠈⣷⣮⠻⣼⠷⡇⢰⠆⢀⡇⠘⠘⡀⠀⠀ ⠀⠀",
	"         ⣤⢷⠀⢷⠀⠀⡇⡯⡟⠀⣯⢻⣿⣿⠂⠀⠀⠀⠀⠀⠀⡗⣾⣾⣿⡇⢹⠭⣇⡏⠀⡼⠀⠀⡇⢡     ",
	"        ⢠⡇⡟⣼⠸⡄⠀⢹⢈⢳⠀⢟⠈⠉⡝⠀⠀⠀⠀⠀⠀⠀⢇⠻⢛⢫⠃⢸⣩⡝⢀⡼⠁⠀⠀⣿ ⣆    ",
	"        ⠿⢣⣿⠀⠀⢳⡀⠀⢿⣠⣛⡲⣈⠑⠊⠀⠀⠀⠛⠀⠀⠀⠑⠵⡚⠡⡴⠁⡜⢠⠞⠁⠀⠀⠀⢹⣆⢹    ",
	"   ⠀⠀⠀  ⢸⡘⡇⡄⠀⠀⠙⣄⠈⠿⣿⡿⠾⠿⠃⠀⠀⢀⣀⣀⠀⠀⠴⢿⣽⡿⠞⣟⡴⠁⠀⠀⠀⠀⢰⢸⣯⣾    ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠇⣁⠀⠀⠀⠈⠳⡘⠀⠀⠀⠀⠀⠀⡜⠉⠀⠉⠱⠀⠀⠀⠁⠀⢰⠏⠀⠀⠀⠀⠀⠀⡎⠸⣿⣿    ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠘⡏⣰⠏⡄⠀⠀⠀⠀⠙⡗⠢⢄⡀⠀⠀⠈⠒⠒⠒⠈⠀⠀⠀⣀⣤⠃⠀⠀⠀⠀⠀⠀⡘⠰⣧⡆⣿    ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢫⠱⣟⡘⡄⠀⠀⠀⠀⢸⢠⢃⠎⢉⡖⠲⠶⠤⠤⠴⢲⣺⣿⣿⡟⠀⠀⠀⠀⠀⢀⡜⢡⡷⡝⢰⡎⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⣽⣷⡘⢄⠀⠀⠀⠘⣧⡯⠊⢁⠑⢄⠀⠀⠀⡠⢊⡸⠻⢿⡇⠀⠀⠀⠀⣠⣾⣷⣿⡿⢀⠟⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠢⣱⣄⠀⢰⣿⢰⠀⠀⠑⠠⣵⣶⠙⠊⠁⠀⢀⡎⡇⠀⠀⣠⣾⣿⡿⠛⣱⠗⠁⠀⠀⠀⠀⠀⠀",

--	"                                         ",
--	"                                         ",
--	"                                         ",
--	"                               ▓▓▓▓▓▓    ",
--	"                             ▓▓  ▒▒▓▓    ",
--	"                           ▓▓  ▒▒  ▓▓    ",
--	"                         ▓▓  ▒▒  ▓▓      ",
--	"                       ▓▓  ▒▒  ▓▓        ",
--	"                     ▓▓  ▒▒  ▓▓          ",
--	"         ▓▓▓▓      ▓▓  ▒▒  ▓▓            ",
--	"         ▓▓▒▒▓▓  ▓▓  ▒▒  ▓▓              ",
--	"           ▓▓▒▒▓▓  ▒▒  ▓▓                ",
--	"           ▓▓▒▒▓▓▒▒  ▓▓                  ",
--	"             ▓▓▒▒▓▓▓▓                    ",
--	"           ▓▓▓▓▓▓▒▒▒▒▓▓                  ",
--	"         ▓▓▓▓██  ▓▓▓▓▒▒▓▓                ",
--	"     ▓▓▓▓▓▓██        ▓▓▓▓                ",
--	"     ▓▓  ▓▓                              ",
--	"     ▓▓▓▓▓▓                              ",
--	"                                         ",

}
db.custom_center = {
	--[[
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      --]]
	{
		icon = "  ",
		desc = "Recently opened files                   ",
		action = "Telescope oldfiles",
		shortcut = "<leader> f o",
	},
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files",
		shortcut = "<leader> f f",
	},
	{
		icon = "  ",
		desc = "File Browser                                    ",
		action = "NvimTreeOpen",
		shortcut = "<C-b>",
	},
	{
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "<leader> f g",
	},
	{
		icon = "  ",
		desc = "Config NVIM                           ",
		action = "edit ~/.config/nvim/",
		shortcut = "~/.config/nvim",
	},
	{
		icon = " ",
		desc = "Help                                      ",
		action = "Telescope help_tags",
		shortcut = "<leader> f h",
	},
}
