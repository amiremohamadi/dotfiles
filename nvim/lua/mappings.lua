-- use ctrl + arrow-keys for scrolling
vim.keymap.set("n", "<C-up>", "<c-y>")
vim.keymap.set("n", "<C-down>", "<c-e>")

-- un-indent
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("i", "<S-Tab>", "<C-d>")

-- tab management
vim.keymap.set("n", "<C-]>", ":tabnext<CR>")
vim.keymap.set("n", "<C-t>", ":tabnew<CR>")

-- lsp
vim.keymap.set("n", "e", require("lsp_lines").toggle)
vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<C-e>", require("trouble").toggle)
