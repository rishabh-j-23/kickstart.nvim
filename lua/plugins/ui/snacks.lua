return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    -- statuscolumn = { enabled = true },
    words = { enabled = true },
    picker = { enabled = true },
  },
  config = function()
    -- Snacks picker is a fuzzy finder that comes with a lot of different things that
    -- it can fuzzy find! It's more than just a "file finder", it can search
    -- many different aspects of Neovim, your workspace, LSP, and more!
    --
    -- The easiest way to use Snacks picker, is to start by doing something like:
    --  :lua Snacks.picker.help()
    --
    -- After running this command, a window will open up and you're able to
    -- type in the prompt window. You'll see a list of help options and
    -- a corresponding preview of the help.

    -- See `:help snacks.picker`
    local snacks = require 'snacks'
    vim.keymap.set('n', '<leader>sh', snacks.picker.help, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>sk', snacks.picker.keymaps, { desc = '[S]earch [K]eymaps' })
    vim.keymap.set('n', '<leader>sf', snacks.picker.files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>ss', snacks.picker.pickers, { desc = '[S]earch [S]elect Snacks Picker' })
    vim.keymap.set('n', '<leader>sw', snacks.picker.grep_word, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>sg', snacks.picker.grep, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader>sd', snacks.picker.diagnostics, { desc = '[S]earch [D]iagnostics' })
    vim.keymap.set('n', '<leader>sr', snacks.picker.resume, { desc = '[S]earch [R]esume' })
    vim.keymap.set('n', '<leader>s.', snacks.picker.recent, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', function()
      snacks.picker.files { hidden = true, ignored = true, exclude = { '.git', '.cache', 'node_modules', '__pycache__' } }
    end, { desc = '[S]earch [N]eovim files' })

    -- Slightly advanced example of overriding default behavior and theme
    vim.keymap.set('n', '<leader>/', function()
      snacks.picker.lines()
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- It's also possible to pass additional configuration options.
    vim.keymap.set('n', '<leader>s/', function()
      snacks.picker.grep { bufs = true }
    end, { desc = '[S]earch [/] in Open Files' })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>sn', function()
      snacks.picker.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
