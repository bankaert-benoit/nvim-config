local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-;>", ":BufferNext<CR>", opts)

-- Move current buffer backwards or forwards in the bufferline
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)

-- Close buffer
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<A-C>", ":BufferCloseAllButCurrent<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", { desc = "Sort by buffer number" })
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", { desc = "Sort by directory" })
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", { desc = "Sort by language" })
map("n", "<leader>bn", ":BufferOrderByName<CR>", { desc = "Sort by name" })
