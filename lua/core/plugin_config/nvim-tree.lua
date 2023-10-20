vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
})

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")
