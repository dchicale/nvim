-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      follow_current_file = {
        enabled = true, -- Automatically updates the root to the current file's directory
      },
      use_libuv_file_watcher = true, -- Use built-in file watcher for auto-refresh
      auto_refresh = true, -- Auto-refresh the tree when files change
      filtered_items = {
        visible = true, -- When true, hidden files will be shown
        never_show = {
          '.DS_Store',
        },
      },
    },
  },
}
