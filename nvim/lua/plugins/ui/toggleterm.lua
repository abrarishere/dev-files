return {
	"akinsho/toggleterm.nvim",
	lazy = true,
	event = "VeryLazy",
	version = "*",
	opts = {

		size = function(term) ---@type number|function
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,
		open_mapping = [[<C-t>]],
		on_open = function(term)
			vim.api.nvim_command("startinsert")
			vim.defer_fn(function()
				vim.notify("Terminal " .. term.id .. " opened", vim.log.levels.INFO, { title = "ToggleTerm" })
			end, 100)
		end,
		on_close = function(term)
			vim.api.nvim_command("stopinsert")
		end,
		hide_numbers = true,
		autochdir = true,
		shade_filetypes = {},
		shade_terminals = false,
		-- the degree by which to darken to terminal colour,
		-- default: 1 for dark backgrounds, 3 for light
		shading_factor = 1,
		start_in_insert = true,
		insert_mappings = true, -- whether or not the open mapping applies in insert mode
		persist_size = true,
		direction = "horizontal", -- | 'horizontal' | 'horizontal' | 'tab' | 'float',,
		close_on_exit = true, -- close the terminal window when the process exits
		shell = vim.o.shell, -- change the default shell
		auto_scroll = true,
		float_opts = {
			border = "single", -- single/double/shadow/curved
			width = math.floor(0.9 * vim.o.columns),
			height = math.floor(0.85 * vim.o.lines),
			winblend = 3,
		},
		winbar = {
			enabled = false,
			name_formatter = function(term)
				return ""
			end,
		},
	},
}
