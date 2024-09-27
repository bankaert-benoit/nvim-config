vim.keymap.set({"n", "i", "v"}, "<c-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set({"n", "i", "v"}, "<leader>sc", "<cmd>w<cr>", { desc = "Save current file" })
vim.keymap.set({"n", "i", "v"}, "<leader>sa", "<cmd>wa<cr>", { desc = "Save all files" })
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
