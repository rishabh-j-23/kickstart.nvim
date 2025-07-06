return {
  -- Configure LazyVim to load tokyonight
  {
    'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000,
    enabled = false,
    opts = { style = 'night', transparent = true },
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      require('kanagawa').setup {
        theme = 'wave',
        transparent = true,
      }
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
  {
    'neanias/everforest-nvim',
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    enabled = false,
    config = function()
      require('everforest').setup {
        -- Your config here
        transparent_bacground_level = 0.8,
      }
      vim.cmd [[colorscheme everforest]]
    end,
  },
}
