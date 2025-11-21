-- Source nvim config changes
vim.keymap.set("n", "<leader>so", ":update<CR> :source<CR>")

-- Disable Space bar since it will be used as the leader key
vim.keymap.set({ "n", "v" }, "<leader>", "<nop>")

-- Redo remap
vim.keymap.set("n", "U", "<C-r>")

-- Swap between split buffers
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>")
-- vim.keymap.set("n", "<leader>rr", ":wincmd r<CR>")

-- Save and quit current file quicker
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = false, noremap = true })
-- vim.keymap.set({ "n", "t" }, "<leader>q", ":q<cr>", { silent = false, noremap = true })

-- Little one from Primeagen to mass replace string in a file
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false })

-- Navigate through buffers
vim.keymap.set("n", "<S-Right>", ":bnext<CR>", { silent = false })
vim.keymap.set("n", "<S-Left>", ":bprevious<CR>", { silent = false })

-- Close currently active buffer
vim.keymap.set("n", "<C-c>", ":bwipeout<CR>", { silent = false })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Center buffer when navigating up and down
vim.keymap.set("n", "<S-Up>", "<C-u>zz")
vim.keymap.set("n", "<S-Down>", "<C-d>zz")

-- Center buffer when progressing through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without replacing paste with what you are highlighted over
vim.keymap.set("n", "<leader>p", '"_dP')

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Open buffer to the right
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>h", ":split<CR>")

-- Move selection up and down
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

-- Move Lines
vim.keymap.set({ "n", "x" }, "<M-S-Up>", ":move -2<cr>", { desc = "Move Line Up" })
vim.keymap.set({ "n", "x" }, "<M-S-Down>", ":move +1<cr>", { desc = "Move Line Down" })
vim.keymap.set("i", "<M-S-Up>", "<C-o>:move -2<cr>", { desc = "Move Line Up" })
vim.keymap.set("i", "<M-S-Down>", "<C-o>:move +1<cr>", { desc = "Move Line Down" })

vim.keymap.set("n", "<leader>config", function()
	vim.cmd(":e ~/.config/nvim/init.lua")
	vim.cmd(":Oil")
end)

-- comment string
vim.keymap.set("n", "§", ":norm gcc<CR>j", { desc = "comment string" })
