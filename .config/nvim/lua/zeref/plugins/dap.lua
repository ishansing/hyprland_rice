return {
  "mfussenegger/nvim-dap", -- Debug Adapter Protocol
  dependencies = {
    "leoluz/nvim-dap-go", -- Go adapter
    "rcarriga/nvim-dap-ui", -- Debug UI
    "theHamsta/nvim-dap-virtual-text", -- Virtual text for debugging
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local dap_go = require("dap-go")

    -- Setup DAP Go
    dap_go.setup()

    -- Setup DAP UI
    dapui.setup()

    -- Open DAP UI automatically
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    vim.keymap.set("n", "<F5>", function()
      require("dap").continue()
    end, { desc = "Start/Continue Debugging" })
    vim.keymap.set("n", "<F10>", function()
      require("dap").step_over()
    end, { desc = "Step Over" })
    vim.keymap.set("n", "<F11>", function()
      require("dap").step_into()
    end, { desc = "Step Into" })
    vim.keymap.set("n", "<F12>", function()
      require("dap").step_out()
    end, { desc = "Step Out" })
    vim.keymap.set("n", "<Leader>b", function()
      require("dap").toggle_breakpoint()
    end, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<Leader>dr", function()
      require("dap").repl.open()
    end, { desc = "Open REPL" })
    vim.keymap.set("n", "<Leader>dl", function()
      require("dap").run_last()
    end, { desc = "Run Last Debugging Session" })
  end,
}
