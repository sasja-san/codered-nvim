local M = {}

function M.setup()

  vim.cmd("syntax reset")
  vim.cmd.highlight("clear")
  vim.g.colors_name = "codered"

  -- get highlight group stuff
  local theme = require("codered.theme")

  local do_cursor_fix = vim.g.codered_fix_termcursor
  if do_cursor_fix then theme.guicursor_fix() end

  theme.cursor_hl_setup()

  -- apply highlights
  for name, attrs in pairs(theme.highlight_groups) do
    if type(attrs) == "table"
      then vim.api.nvim_set_hl(0, name, attrs)
      else vim.api.nvim_set_hl(0, name, { link = attrs })
    end
  end

end

return M
