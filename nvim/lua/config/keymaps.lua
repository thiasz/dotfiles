-- source and update neovim config
vim.keymap.set("n", "<leader>so", function()
	vim.cmd("update")
	vim.cmd("source $MYVIMRC")
end, { silent = true, desc = "Source and update neovim config" })

-- restart nvim and restore session
local session_file = vim.fn.stdpath("state") .. "/Session.vim"
vim.keymap.set("n", "<leader>re", function()
	vim.cmd("mks! " .. vim.fn.fnameescape(session_file))
	vim.cmd("restart source " .. vim.fn.fnameescape(session_file))
end, { silent = true, desc = "Restart nvim and restore session" })

-- Disable Space bar since it will be used as the leader key
vim.keymap.set({ "n", "v" }, "<leader>", "<nop>", { desc = "Disable leader key default" })

-- Redo remap
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- after a search, press escape to clear highlights
vim.keymap.set("n", "<Esc>", ":nohl<CR>", { silent = true, desc = "Clear search highlights" })

-- Swap between split buffers
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true, desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true, desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true, desc = "Move to above split" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true, desc = "Move to right split" })
vim.keymap.set("n", "<leader>rr", ":wincmd r<CR>", { silent = true, desc = "Rotate split buffers" })

-- Save and quit current file quicker
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = true, noremap = true, desc = "Save current file" })
vim.keymap.set({ "n", "t" }, "<leader>q", ":q<cr>", { silent = true, noremap = true, desc = "Quit current buffer" })

-- Little one from Primeagen to mass replace string in a file
-- vim.keymap.set("n", "<leader>ss", [[:%s/<C-r><C-w>/<C-r><C-w>/gcI<Left><Left><Left>]], { silent = false })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false })
-- vim.keymap.set("n", "<leader>sz", ':%norm f,d$T:d0f_y0Pa <cr>:%norm$a touch<cr>ggVG"+y', { silent = false }

-- Navigate through buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })

-- Close currently active buffer
vim.keymap.set("n", "<C-c>", ":bwipeout<CR>", { silent = true, desc = "Close current buffer" })
vim.keymap.set("n", "<C-x>", ":bwipeout!<CR>", { silent = true, desc = "Close current buffer" })

-- Center buffer when navigating up and down
vim.keymap.set("n", "<S-k>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "<S-j>", "<C-d>zz", { desc = "Scroll down and center" })

-- Center buffer when progressing through search results
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result centered" })

-- Paste without replacing paste with what you are highlighted over
vim.keymap.set("n", "<leader>p", '"_dP', { desc = "Paste without replacing register" })

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Open buffer to the right
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { silent = true, desc = "Vertical split" })
vim.keymap.set("n", "<leader>V", ":split<CR>", { silent = true, desc = "Horizontal split" })

-- Move selection up and down
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selection down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selection up" })

-- Indent and Unindent
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

-- Exit terminal with Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>", { desc = "Exit terminal mode" })

-- open config file and run :Oil
vim.keymap.set("n", "<leader>config", function()
	vim.cmd(":e ~/.config/nvim/init.lua")
	vim.cmd(":Oil")
end, { silent = true, desc = "Open neovim config" })

-- toggle inlayhints
vim.keymap.set("n", "<leader>i", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
	vim.notify(vim.lsp.inlay_hint.is_enabled() and "Inlay Hints Enabled" or "Inlay Hints Disabled")
end, { silent = true, desc = "Toggle inlay hints" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { silent = true, desc = "New tab" })
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>", { silent = true, desc = "Close tab" })
vim.keymap.set("n", "<leader>ts", ":tab split<CR>", { silent = true, desc = "Split to new tab" })
vim.keymap.set("n", "<leader><Tab>", ":tabnext<CR>", { silent = true, desc = "Next tab" })
vim.keymap.set("n", "<leader><S-Tab>", ":tabprevious<CR>", { silent = true, desc = "Previous tab" })

-- navigate Quick Fix List
-- vim.keymap.set("n", "<C-q>", ":copen<CR>", { desc = "open Quick Fix List" })
-- vim.keymap.set("n", "<C-C>", ":cclose<CR>", { desc = "close Quick Fix List" })
vim.keymap.set("n", "<C-n>", ":cnext<CR>", { desc = "next Entry in Quick Fix List" })
vim.keymap.set("n", "<C-m>", ":cprevious<CR>", { desc = "previous Entry in Quick Fix List" })

-- comment string
vim.keymap.set("n", "&", ":norm gcc<CR>j", { desc = "comment string" })
