local M = {}

M.create_window = function()
	local max_height = vim.api.nvim_win_get_height(0)
	local max_width = vim.api.nvim_win_get_width(0)

	local height = math.floor(max_height * 0.8)
	local width = math.floor(max_width * 0.8)

	local buf = vim.api.nvim_create_buf(false, false)

	vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		height = height,
		width = width,
		col = (max_width - width) / 2,
		row = (max_height - height) / 2,
		border = "double",
	})
end

vim.api.nvim_create_user_command("Todo", "lua require('floater').todo()", {})
vim.api.nvim_create_user_command("CreateTerminal", "lua require('floater').create_terminal()", {})
vim.api.nvim_create_user_command("Lazygit", "lua require('floater').lazygit()", {})
vim.api.nvim_create_user_command("Lazydocker", "lua require('floater').lazydocker()", {})

M.todo = function()
	M.create_window()
	vim.cmd("e ~/todo.md")
end

M.create_terminal = function()
	M.create_window()
	vim.cmd("terminal")
	vim.cmd("startinsert")
end

M.lazygit = function()
	M.create_window()
	vim.cmd("terminal lazygit")
	vim.cmd("startinsert")
end

M.lazydocker = function()
	M.create_window()
	vim.cmd("terminal lazydocker")
	vim.cmd("startinsert")
end

return M
