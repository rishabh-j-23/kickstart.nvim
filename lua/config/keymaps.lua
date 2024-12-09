vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>fu', vim.cmd.UndotreeToggle, { desc = 'Undo tree' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { desc = 'new name' })
vim.keymap.set('n', 'grr', vim.lsp.buf.references, { desc = 'refferences' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '')
vim.keymap.set('n', '<right>', '')
vim.keymap.set('n', '<up>', '')
vim.keymap.set('n', '<down>', '')

vim.keymap.set('n', '<leader>x', '<CMD>source %<CR>', { desc = 'Source file' })
vim.keymap.set('n', '<leader>l', '<CMD>Lazy<CR>', { desc = 'Lazy' })
vim.keymap.set('n', 'C-d', 'C-dzz', { desc = 'Page down and center' })
-- Better up/down
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })

-- Clear search with <esc>
vim.keymap.set({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

-- Redraw, clear search, and update diff
vim.keymap.set('n', '<leader>ur', '<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { desc = 'Redraw / Clear hlsearch / Diff Update' })

-- Better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Save file
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- Lazygit
if vim.fn.executable 'lazygit' == 1 then
  vim.keymap.set('n', '<leader>gg', function()
    -- Snacks.lazygit { cwd = LazyVim.root.git() }
  end, { desc = 'Lazygit (Root Dir)' })
  vim.keymap.set('n', '<leader>gG', function()
    -- Snacks.lazygit()
  end, { desc = 'Lazygit (cwd)' })
end
