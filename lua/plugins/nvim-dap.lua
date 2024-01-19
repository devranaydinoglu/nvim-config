
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
		name = "Launch",
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

	vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end)
	vim.keymap.set("n", "<F5>", function() dap.continue() end)
	vim.keymap.set("n", "<F10>", function() dap.step_over() end)
	vim.keymap.set("n", "<F11>", function() dap.step_into() end)

    end
}
