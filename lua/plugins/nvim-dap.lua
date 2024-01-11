
return {
    "mfussenegger/nvim-dap",
    config = function()
	local dap = require("dap")

	dap.adapters.lldb = {
	    type = "executable",
	    command = "/usr/bin/lldb-vscode",
	    name = "lldb"
	}

	dap.configurations.cpp = {
	    {
		name = "Launchh",
		type = "lldb",
		request = "launch",
		program = function()
		    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {}
	    }
	}

	vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>")
	vim.keymap.set("n", "<leader>ds", "<cmd>DapContinue<CR>")
    end
}
