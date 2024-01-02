return {
	"elixir-tools/elixir-tools.nvim",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local elixir = require("elixir")
		local elixirls = require("elixir.elixirls")

		elixir.setup {
			nextls = {
				enable = false,
				cmd = "/Users/simon/.local/share/nvim/mason/bin/nextls"
			},
			credo = {},
			elixirls = {
				cmd = "/Users/simon/.local/share/nvim/mason/bin/elixir-ls",
				enable = true,
				settings = elixirls.settings {
					dialyzerEnabled = false,
					enableTestLenses = false,
					suggestSpecs = false,
				},
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>",
						{ buffer = true, noremap = true })
					vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>",
						{ buffer = true, noremap = true })
					vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>",
						{ buffer = true, noremap = true })
					require('custom.lsp').on_attach(client, bufnr)
				end,
			}
		}
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
