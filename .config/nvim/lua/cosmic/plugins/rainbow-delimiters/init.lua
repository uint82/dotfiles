local user_config = require('cosmic.core.user')
local u = require('cosmic.utils')
return {
	"HiPhish/rainbow-delimiters.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- Define the colors
		local colors = {
			"#ea6962", -- red
			"#d8a657", -- yellow
			"#458588", -- blue
			"#8ec07c", -- green
			"#d3869b", -- purple
			"#e78a4e", -- orange
			"#83a598", -- cyan
		}
		
		-- Set up highlight groups
		for i, color in ipairs(colors) do
			vim.api.nvim_set_hl(0, "RainbowDelimiter" .. i, { fg = color })
		end
		
		require("rainbow-delimiters.setup").setup({
			highlight = {
				"RainbowDelimiter1",
				"RainbowDelimiter2",
				"RainbowDelimiter3",
				"RainbowDelimiter4",
				"RainbowDelimiter5",
				"RainbowDelimiter6",
				"RainbowDelimiter7",
			},
		})
	end,
}
