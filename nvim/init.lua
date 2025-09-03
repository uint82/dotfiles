if vim.fn.has('nvim-0.11') == 0 then
  error('Need Neovim v0.11+ (Nightly) in order to run Cosmic!')
end

local ok, err = pcall(require, 'cosmic')

-- Early in init.lua, before plugin setup
local hl = vim.api.nvim_set_hl
local cmd = vim.cmd

cmd([[highlight WinSeparator guibg = None]])
cmd([[highlight CursorLine guibg = None]])
cmd([[highlight CursorLineNr guifg = #d8a657]])

-- changing bg and border colors
hl(0, "FloatBorder", { fg = "#d8a657" })
hl(0, "LspInfoBorder", { link = "Normal" })
hl(0, "NotifyBorder", { fg = "#d8a657", bg = "None" })
hl(0, "NormalFloat", { link = "Normal" })
hl(0, "Pmenu", { link = "Normal" })
hl(0, "PmenuSel", { link = "Search" })

-- noice border and bg color
hl(0, "NoiceCmdlinePopupBorder", { fg = "#d8a657", bg = "None" })

-- Telescope floating window border
hl(0, "TelescopeBorder", { fg = "#d8a657", bg = "None" })
hl(0, "TelescopePromptBorder", { fg = "#d8a657", bg = "None" })
hl(0, "TelescopeResultsBorder", { fg = "#d8a657", bg = "None" })
hl(0, "TelescopePreviewBorder", { fg = "#d8a657", bg = "None" })

-- blink cmp
hl(0, "BlinkCmpMenu", { link = "Normal" })
hl(0, "BlinkCmpMenuBorder", { link = "Normal" })
hl(0, "BlinkCmpMenuSelection", { link = "Search" })
hl(0, "BlinkCmpLabelMatch", { link = "Search" })
hl(0, "NotifyBackground", { bg = "#282828" })

-- snacks indentline
hl(0, "SnacksIndent1", { fg = "#ea6962" })
hl(0, "SnacksIndent2", { fg = "#d8a657" })
hl(0, "SnacksIndent3", { fg = "#458588" })
hl(0, "SnacksIndent4", { fg = "#8ec07c" })
hl(0, "SnacksIndent5", { fg = "#d3869b" })
hl(0, "SnacksIndent6", { fg = "#e78a4e" })
hl(0, "SnacksIndent7", { fg = "#83a598" })

if not ok then
  error(('Error loading core...\n\n%s'):format(err))
end
