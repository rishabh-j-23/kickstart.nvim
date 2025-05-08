return {
  -- Configure LazyVim to load tokyonight
  {
    'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000,
    enabled = true,
    opts = { style = 'night' },
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      vim.cmd 'colorscheme kanagawa-wave'
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    enabled = true,
    config = function()
      require('nightfox').setup {

        options = {
          transparent = true,
        },
      }
      vim.cmd 'colorscheme carbonfox'
    end,
  },
}
