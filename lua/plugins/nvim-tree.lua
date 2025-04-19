vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle <CR>', { silent = true })

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    update_focused_file = {
      enable = true,
    },
    renderer = {
      hidden_display = 'all',
    },
  },
}
