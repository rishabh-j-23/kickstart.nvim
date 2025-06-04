return {
  -- Configure LazyVim to load tokyonight
  {
    'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000,
    enabled = false,
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
      vim.api.nvim_set_hl(0, 'Visual', { bg = '#285577' })
    end,
  },
}
