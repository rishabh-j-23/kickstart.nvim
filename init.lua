require 'config.lazy'
require 'config.keymaps'
require 'config.opts'
require 'config.autocmds'

-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  { import = 'plugins' },
}, {})
