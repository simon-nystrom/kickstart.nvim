return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'black' },
      lua = { 'stylua' },
      -- elixir = { 'mix' },
      markdown = { 'markdownlint' },
      javascript = { 'prettierd' },
      typescript = { 'prettierd' },
      javascriptreact = { 'prettierd' },
      typescriptreact = { 'prettierd' },
      css = { 'prettierd' },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}
