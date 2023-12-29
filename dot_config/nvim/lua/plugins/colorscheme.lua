return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		name = "tokyonight",
		priority = 1001,
		config = function()
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
