return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- Initialize the global variable
    _G.NEOTREE_VISIBLE == false,

    vim.keymap.set('n', '<C-b>', function()
      if _G.NEOTREE_VISIBLE then
        vim.cmd('Neotree close')
        _G.NEOTREE_VISIBLE = false
      else
        vim.cmd('Neotree filesystem reveal left')
        _G.NEOTREE_VISIBLE = true
      end
    end, {})
  }
}

