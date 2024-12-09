return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  enabled = false,
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  -- Document existing key chains
  spec = {
    { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
    { '<leader>d', group = '[D]ocument' },
    { '<leader>r', group = '[R]ename' },
    { '<leader>s', group = '[S]earch' },
    { '<leader>w', group = '[W]orkspace' },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    { '<leader>g', group = 'git' },
  },
}
