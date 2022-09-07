local dap = require("dap")
local java8_home = vim.g["java8_home"]
local java11_home = vim.g["java11_home"]
local java17_home = vim.g["java17_home"]
dap.configurations.java = {
	{
		projectName = "my-exam-project",
		args = "",
		mainClass = "com.wuziqiu666.App",
		javaExec = java8_home .. "/bin/java",
		name = "Launch my-exam-project",
		request = "launch",
		type = "java",
	},

	{
		projectName = "cdnewsdbv2",
		args = "--spring.profiles.active=dev",
		mainClass = "com.cuc.cdnewsdbv2.Cdnewsdbv2Application",
		javaExec = java8_home .. "/bin/java",
		name = "Launch cdnewsdbv2",
		request = "launch",
		type = "java",
	},
}
