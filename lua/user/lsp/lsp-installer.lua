local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"bashls",
	"jsonls",
	"yamlls",
	"tailwindcss",
	"intelephense",
	"emmet_ls",
	"omnisharp",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "intelephense" then
		local php_opts = require("user.lsp.settings.intelephense")
		opts = vim.tbl_deep_extend("force", php_opts, opts)
	end

	if server == "omnisharp" then
		local omni_opts = require("user.lsp.settings.omnisharp")
		opts = vim.tbl_deep_extend("force", omni_opts, opts)
	end

	if server == "tsserver" then
		local ts_opts = require("user.lsp.settings.tsserver")
		opts = vim.tbl_deep_extend("force", ts_opts, opts)
	end

	if server == "emmet_ls" then
		local emmet_opts = require("user.lsp.settings.emmet")
		opts = vim.tbl_deep_extend("force", emmet_opts, opts)
	end

	lspconfig[server].setup(opts)
end
