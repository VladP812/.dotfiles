local config_path = vim.fn.stdpath('config')

-- opens the root directory of the config
-- run with :lua cfg()

function cfg()
	print(string.format("Opened %s", config_path))
	vim.cmd("Ex " .. config_path)
end
