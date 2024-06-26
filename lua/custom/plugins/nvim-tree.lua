vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
      },
    }

    vim.keymap.set('n', '<C-n>', ':NvimTreeToggle <CR>', { silent = true })
  end,
}
