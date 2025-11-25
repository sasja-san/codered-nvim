local M = {}

function M.setup()

  vim.cmd("syntax reset")
  vim.cmd.highlight("clear")
  vim.cmd("highlight clear")
  vim.g.colors_name = "codered"

  -- get highlights
  local theme = require("codered.theme")

  -- HACK: The user should set this themself.
  vim.g.codered_fix_termcursor = true

  if vim.g.codered_fix_termcursor then theme.guicursor_fix() end

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
