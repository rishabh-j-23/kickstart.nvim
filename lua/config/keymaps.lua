vim.keymap.set('n', '<leader>qq', '<CMD>q<CR>', { desc = 'quit current window' })

vim.keymap.set('n', 'dag', 'ggVGd', { desc = 'delete around whole file' })
vim.keymap.set('n', 'yag', 'ggVGy', { desc = 'yank around whole file' })

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle, { desc = 'undotree' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>xx', vim.diagnostic.setloclist, { desc = 'quickfix list' })
vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { desc = 'new name' })
vim.keymap.set('n', 'grr', vim.lsp.buf.references, { desc = 'references' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '')
vim.keymap.set('n', '<right>', '')
vim.keymap.set('n', '<up>', '')
vim.keymap.set('n', '<down>', '')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>x', '<CMD>source %<CR>', { desc = 'Source file' })
vim.keymap.set('n', '<leader>l', '<CMD>Lazy<CR>', { desc = 'Lazy' })
vim.keymap.set('n', 'C-d', 'C-dzz', { desc = 'PG DN and center' })
-- Better up/down
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gjzz' : 'jzz'", { desc = 'Down', expr = true, silent = true })
-- vim.keymap.set({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gkzz' : 'kzz'", { desc = 'Up', expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })

-- Clear search with <esc>
vim.keymap.set({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

-- Better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Save file
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<CMD>w<CR><ESC>', { desc = 'save file' })
