local user_config = require('cosmic.core.user')

return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  event = 'VeryLazy',
  opts = {
    -- Example options (remove or adjust as needed)
    usercmds = true,   -- Enables user commands such as :Cord
    log_level = 'info',
    editor = {
      tooltip = 'Neovim ❤️ Discord',
    },
    display = {
      show_time = true,   -- Show session timer
    },
  },
  enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'presence'),
}

