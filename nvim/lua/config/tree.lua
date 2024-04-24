require("nvim-tree").setup()

vim.keymap.set("n", "<C-b>", require("nvim-tree.api").tree.toggle, {
  silent = true,
  desc = "toggle nvim-tree",
})
