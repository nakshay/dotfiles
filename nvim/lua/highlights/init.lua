local M = {}

-- Load highlights per language
function M.setup()
    require("highlights.rust").setup()
  -- require("highlights.go").setup()
  -- require("highlights.java").setup()
end

return M
