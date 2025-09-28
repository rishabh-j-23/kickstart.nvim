require 'config.lazy'
require 'config.keymaps'
require 'config.opts'
require 'config.autocmds'

-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  { import = 'plugins.lsp' },
  { import = 'plugins.completion' },
  { import = 'plugins.formatting' },
  { import = 'plugins.ui' },
  { import = 'plugins.git' },
  { import = 'plugins.themes' },
  { import = 'plugins.debug' },
  { import = 'plugins.utils' },
}, {})
