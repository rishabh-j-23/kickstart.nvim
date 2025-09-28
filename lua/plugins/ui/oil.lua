return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    skip_confirm_for_simple_edits = false,
    view_options = {
      show_hidden = true,
    },
    preview_win = {
      -- Whether the preview window is automatically updated when the cursor is moved
      update_on_cursor_moved = true,
      -- Maximum file size in megabytes to preview
      max_file_size_mb = 100,
      -- Window-local options to use for preview window buffers
      win_options = {},
    },
  },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
