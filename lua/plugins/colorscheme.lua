return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    opts = { style = 'night' },

    config = function()
      -- load the colorscheme here
      vim.cmd [[colorscheme tokyonight]]
    end,
  },
}
