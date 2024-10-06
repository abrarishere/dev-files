return {
	"folke/which-key.nvim",
	event = "VeryLazy",

	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
		require("transparent").clear_prefix("Which")
	end,
	opts = {
		preset = "modern",
	},
}
