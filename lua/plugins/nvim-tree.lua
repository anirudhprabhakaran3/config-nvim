return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true

		nvimtree.setup({
			filters = {
				dotfiles = false,
			},
			git = {
				ignore = false,
			},
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
		})
		
		vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {})
		vim.keymap.set("n", "<C-p>", ":NvimTreeFindFileToggle<CR>", {})
	end
}
	
