local user_config = require('cosmic.core.user')
local u = require('cosmic.utils')

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- indent guide lines
		indent = {
			enabled = true,
			animate = {
				enabled = false,
			},
			scope = {
				enabled = false,
			},

			-- can be a list of hl groups to cycle through
			indent = {
				hl = {
					"SnacksIndent1",
					"SnacksIndent2",
					"SnacksIndent3",
					"SnacksIndent4",
					"SnacksIndent5",
					"SnacksIndent6",
					"SnacksIndent7",
				},
			},
		},
		-- disable all other snacks features
		dashboard = { enabled = false },
		picker = { enabled = false },
		notifier = { enabled = false },
		bigfile = { enabled = false },
		lazygit = { enabled = false },
		terminal = { enabled = false },
		input = { enabled = false },
		quickfile = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = false },
		layout = { enabled = false },
		debug = { enabled = false },
	},
}


