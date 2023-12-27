return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'dracula' -- Ensure the theme name is a valid string
      }
    }
  end
}

