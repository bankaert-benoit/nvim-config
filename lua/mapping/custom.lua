vim.keymap.set({"n", "i", "v"}, "<c-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set({"n", "i", "v"}, "<leader>sc", "<cmd>w<cr>", { desc = "Save current file" })
vim.keymap.set({"n", "i", "v"}, "<leader>sa", "<cmd>wa<cr>", { desc = "Save all files" })
vim.keymap.set({"n", "t"}, "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
vim.keymap.set({"n", "t"},"<leader>tn", "<cmd>tabnext<cr>", { desc = "Next tab" })
vim.keymap.set({"n", "t"}, "<leader>tp", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
vim.keymap.set({"n", "t"}, "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })

vim.keymap.set({"n", "i", "v", "t"}, "<c-h>", "<c-w>h", { desc = "Move to left window" })
vim.keymap.set({"n", "i", "v", "t"}, "<c-j>", "<c-w>j", { desc = "Move to down window" })
vim.keymap.set({"n", "i", "v", "t"}, "<c-k>", "<c-w>k", { desc = "Move to up window" })
vim.keymap.set({"n", "i", "v", "t"}, "<c-l>", "<c-w>l", { desc = "Move to right window" })
