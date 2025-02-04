vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set({ "n", "v" }, "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
vim.keymap.set({ "n", "v" }, "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set({ "n", "v" }, "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "LSP References" })
vim.keymap.set({ "n", "v" }, "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", { desc = "LSP Definitions" })
vim.keymap.set({ "n", "v" }, "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { desc = "LSP Implementations" })
vim.keymap.set({ "n", "v" }, "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "LSP Type Definitions" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
