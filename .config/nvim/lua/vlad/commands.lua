local config_path = vim.fn.stdpath('config')

-- opens up the directory where init.vim is stored
-- run with :lua cfg()

function cfg()
	print(string.format("Opened %s", config_path))
	vim.cmd("Ex " .. config_path)
end
