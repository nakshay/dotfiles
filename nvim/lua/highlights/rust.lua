local M = {}

M.setup = function()
  vim.api.nvim_set_hl(0, "@keyword.rust",   { fg = "#d3869b", bold = true })
  vim.api.nvim_set_hl(0, "@type.rust",      { fg = "#83a598", italic = true })
  vim.api.nvim_set_hl(0, "@function.rust",  { fg = "#fabd2f", bold = true })
  vim.api.nvim_set_hl(0, "@variable.rust",  { fg = "#ebdbb2" })
end

return M
