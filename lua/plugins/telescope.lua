return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup()
    telescope.load_extension("fzf")

    vim.keymap.set("n", "<Space><Space>", builtin.find_files, {})
    vim.keymap.set("n", "<Space>f", builtin.live_grep, {})
  end,
}
