-- Add this line at the top to speed up loading
vim.g.skip_ts_context_commentstring_module = true

local user_config = require('cosmic.core.user')
local u = require('cosmic.utils')

local defaults = {
  ensure_installed = {
    'astro',
    'css',
    'go',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'markdown',
    'markdown_inline',
    'php',
    'python',
    'regex',
    'styled',
    'scss',
    'solidity',
    'tsx',
    'typescript',
    'yaml',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
  -- REMOVED: autotag section (deprecated)
  -- REMOVED: context_commentstring section (deprecated)
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },
}

return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'windwp/nvim-ts-autotag',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter-refactor',
  },
  event = 'BufEnter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup(u.merge(defaults, user_config.plugins.treesitter or {}))

    -- Setup nvim-ts-autotag (new way)
    require('nvim-ts-autotag').setup({
      opts = {
        -- Defaults
        enable_close = true,          -- Auto close tags
        enable_rename = true,         -- Auto rename pairs of tags
        enable_close_on_slash = false -- Auto close on trailing </
      },
      -- Also override individual filetype configs, these take priority.
      -- Empty by default, useful if one of the "opts" global settings
      -- doesn't work well in a specific filetype
      per_filetype = {
        ["html"] = {
          enable_close = false
        }
      }
    })

    -- Add the new ts_context_commentstring setup
    require('ts_context_commentstring').setup({
      enable_autocmd = false,
    })
  end,
  enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'treesitter'),
}
