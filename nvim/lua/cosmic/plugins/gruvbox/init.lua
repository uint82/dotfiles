local user_config = require('cosmic.core.user')
return {
  { -- color scheme
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    config = function()
      local config = require('cosmic.plugins.gruvbox.config')
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd('colorscheme gruvbox')
    end,
    enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'gruvbox'),
  },
}
