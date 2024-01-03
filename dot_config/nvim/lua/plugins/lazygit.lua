return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("lazy").setup({})
		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", {})
	end,
}
