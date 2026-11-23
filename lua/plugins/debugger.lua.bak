return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "jedrzejboczar/nvim-dap-cortex-debug",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      {
        -- VSCode Cortex-Debug extension packaged for LazyVim
        "marus/cortex-debug",
        build = "npm install && npm run compile",
      },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      -- Automatically open/close dap-ui
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      local dapvt = require("nvim-dap-virtual-text")
      dapvt.setup(dapvt.options)

      -- Setup cortex-debug adapter
      require("dap-cortex-debug").setup({
        debug = false,
        extension_path = vim.fn.stdpath("data") .. "/lazy/cortex-debug",
      })

      dap.adapters.cortex_debug = {
        type = "executable",
        command = "node",
        args = { vim.fn.stdpath("data") .. "/lazy/cortex-debug/extension/out/src/adapter/cortex-debug.js" },
      }

      require("dap.ext.vscode").load_launchjs(nil, { ["cortex-debug"] = { "c", "cpp" } })

      -- Keybindings
      vim.keymap.set("n", "<leader>dc", function()
        dap.continue()
      end)
      vim.keymap.set("n", "<leader>dv", function()
        dap.step_over()
      end)
      vim.keymap.set("n", "<leader>di", function()
        dap.step_into()
      end)
      vim.keymap.set("n", "<leader>do", function()
        dap.step_out()
      end)
      vim.keymap.set("n", "<leader>db", function()
        dap.toggle_breakpoint()
      end)
      vim.keymap.set("n", "<leader>dr", function()
        dap.repl.open()
      end)
      vim.keymap.set("n", "<leader>dt", function()
        dap.terminate()
      end)
    end,
  },
}
