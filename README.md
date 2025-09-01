# What is this?

It is a plugin to add some useful functionality using floating windows in neovim

# Install guide
### Lazy
```lua
return {
	"Zynith0/floater.nvim"
	config = function()
		local floater = require('floater')
		vim.keymap.set("n", "<leader>to", floater.todo)
		vim.keymap.set("n", "<leader>te", floater.create_terminal)
		vim.keymap.set("n", "<leader>l", floater.lazygit)
		vim.keymap.set("n", "<leader>d", floater.lazydocker)
	end
}
```
