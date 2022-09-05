local lsp_file_path = "/Users/wuziqiu/lsp/"
local java_debug_path = lsp_file_path .. "java-debug/"
local java_agent_path = lsp_file_path .. "java-agent/"
local java_test_path = lsp_file_path .. "vscode-java-test/"
local jdtls_path = lsp_file_path .. "jdt-language-server/"
local java8_path = "/usr/local/Cellar/openjdk@8/1.8.0+345/libexec/openjdk.jdk/Contents/Home/jre"
local java11_path = "/usr/local/Cellar/openjdk@11/11.0.16.1/libexec/openjdk.jdk/Contents/Home"
local java17_path = "/usr/local/Cellar/openjdk@17/17.0.4.1/libexec/openjdk.jdk/Contents/Home"

function PrintDiagnostics(opts, bufnr, line_nr, client_id)
	bufnr = bufnr or 0
	line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
	opts = opts or { ["lnum"] = line_nr }
	local line_diagnostics = vim.diagnostic.get(bufnr, opts)
	if vim.tbl_isempty(line_diagnostics) then
		return
	end
	local diagnostic_message = ""
	for i, diagnostic in ipairs(line_diagnostics) do
		diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
		print(diagnostic_message)
		if i ~= #line_diagnostics then
			diagnostic_message = diagnostic_message .. "\n"
		end
	end
	vim.api.nvim_echo({ { diagnostic_message, "Normal" } }, false, {})
end

local setup = function()
	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
	local config = {
		cmd = {
			"/usr/local/opt/openjdk@17/bin/java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Declipse.product=org.eclipse.jdt.ls.core.product",
			"-Dlog.protocol=true",
			"-Dlog.level=ALL",
			"-Xms1g",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"--add-opens",
			"java.base/java.lang=ALL-UNNAMED",
			"-javaagent:" .. java_agent_path .. "lombok.jar",
			"-jar",
			vim.fn.glob(jdtls_path .. "plugins/org.eclipse.equinox.launcher_*.jar"),
			"-configuration",
			jdtls_path .. "config_mac",
			"-data",
			jdtls_path .. "data",
		},

		root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
		settings = {
			java = {
				configuration = {
					runtimes = {
						{
							name = "JavaSE-1.8",
							path = java8_path,
						},
						{
							name = "JavaSE-11",
							path = java11_path,
						},
						{
							name = "JavaSE-17",
							path = java17_path,
						},
					},
				},
			},
		},

		on_attach = function(client, bufnr)
			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					local opts = {
						focusable = false,
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
						border = "rounded",
						source = "always",
						prefix = " ",
						scope = "cursor",
					}
					vim.diagnostic.open_float(nil, opts)
				end,
			})

			require("jdtls").setup_dap({ hotcodereplace = "auto" })
			require("jdtls.setup").add_commands()
		end,

		capabilities = capabilities,
	}

	local bundles = {
		vim.fn.glob(java_debug_path .. "com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
	}
	vim.list_extend(bundles, vim.split(vim.fn.glob(java_test_path .. "server/*.jar"), "\n"))
	config["init_options"] = {
		bundles = bundles,
	}
	require("jdtls").start_or_attach(config)
end

--[[
require('lspconfig').jdtls.setup({
    vmargs = {
        "-XX:+UseParallelGC",
        "-XX:GCTimeRatio=4",
        "-XX:AdaptiveSizePolicyWeight=90",
        "-Dsun.zip.disableMemoryMapping=true",
        "-Djava.import.generatesMetadataFilesAtProjectRoot=false",
        "-Xmx1G",
        "-Xms100m",
    },
    use_lombok_agent = true,
    capabilities = capabilities,
})
--]]

vim.api.nvim_create_augroup("jdtls_lsp", {
	clear = true,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	group = "jdtls_lsp",
	pattern = { "java" },
	callback = setup,
})
