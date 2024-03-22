return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				"ruff",
				"mypy",
				"black",
				"pyright",
				"debugpy",
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"marksman",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tflint.setup({})
			lspconfig.pyright.setup({
				filetypes = { "python" },
			})
			lspconfig.graphql.setup({})
			lspconfig.marksman.setup({})
			lspconfig.jsonls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			require("lspconfig").terraformls.setup({})
			vim.api.nvim_create_autocmd({ "BufWritePre" }, {
				pattern = { "*.tf", "*.tfvars" },
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end,
	},
}
