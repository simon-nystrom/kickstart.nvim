-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    local dap = require 'dap'
    local ui = require 'dapui'

    require('dapui').setup()

    dap.adapters.mix_task = { type = 'executable', command = '/Users/simonnystrom/.local/share/nvim/mason/bin/elixir-ls-debugger' }
    dap.configurations.elixir = {
      {
        type = 'mix_task',
        name = 'phoenix server',
        task = 'phx.server',
        request = 'launch',
        projectDir = '${workspaceFolder}',
        exitAfterTaskReturns = false,
        debugAutoInterpretAllModules = false,
      },
    }

    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)

    dap.listeners.before.attach.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      ui.open()
    end
  end,
}
