return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        contrast = 'hard',
        transparent_mode = true,
      }
      vim.o.background = 'dark'
      vim.cmd.colorscheme("gruvbox")

      -- Semi-dark backgrounds
      vim.api.nvim_set_hl(0, 'Normal',      { bg = '#1d2021' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1d2021' })
      vim.api.nvim_set_hl(0, 'SignColumn',  { bg = '#1d2021' })

      -- Load language highlights immediately
      require("highlights").setup()
      
    end,
  },
}
