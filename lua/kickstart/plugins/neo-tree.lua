-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    open_files_do_not_replace_types = { 'terminal', 'Trouble', 'trouble', 'qf', 'Outline' },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          '.DS_Store',
          '.idea',
          'thumbs.db',
          'node_modules',
        },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      group_empty_dirs = false,
      hijack_netrw_behavior = 'open_default',
      use_libuv_file_watcher = true,
    },
    window = {
      position = 'left',
      width = 60,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = '',
        expander_expanded = '',
        expander_highlight = 'NeoTreeExpander',
      },
    },
  },
}
