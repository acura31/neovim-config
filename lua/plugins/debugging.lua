return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"mfussenegger/nvim-dap-python",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		-- DAP-UI setup
		dapui.setup()

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- Python-specific setup
		dap_python.setup("/usr/bin/python3")

		-- DAP Virtual Text setup
		require("nvim-dap-virtual-text").setup({
			commented = true, -- Prefix virtual text with comment string
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<leader>dc", dap.continue, {})
		vim.keymap.set("n", "<leader>do", dap.step_over, {})
		vim.keymap.set("n", "<leader>di", dap.step_into, {})
		vim.keymap.set("n", "<leader>du", dap.step_out, {})
		vim.keymap.set("n", "<leader>dr", dap.repl.open, {})
		vim.keymap.set("n", "<leader>dv", function()
			require("dapui").eval()
		end, { desc = "Evaluate expression under cursor" })
	end,
}
