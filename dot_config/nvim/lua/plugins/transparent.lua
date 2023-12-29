return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({})
		vim.keymap.set("n", "<leader>te", ":TransparentEnable<cr>", {})
		vim.keymap.set("n", "<leader>td", ":TransparentDisable<cr>", {})
	end,
}
