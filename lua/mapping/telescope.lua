vim.keymap.set({"n", "i", "v"}, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set({"n", "i", "v"}, "<leader>fg", "<cmd>Telescope live_grep<cr>",  { desc = "Live Grep" })

