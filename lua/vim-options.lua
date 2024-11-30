vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true -- Show the line number of the current line
--vim.opt.relativenumber = true -- Show relative line numbers for other lines

local opts = { noremap = true, silent = true }

-- Shorten function name I ain't typing vim.api.nvim_set_keymap every single time bruh
local keymap = vim.api.nvim_set_keymap
local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--Jumping between windows. Just Ctrl + navigation-key
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize windows

keymap("n", "<A-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-k>", ":resize -2<CR>", opts)
keymap("n", "<A-j>", ":resize +2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize +2<CR>", opts)

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })

--Moving in insert mode
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-l>", "<Right>", { desc = "move right" })

--Toggle Relative numbers
map("n", "<leader>n", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

-- Next buffer (Tab)
map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
-- Previous buffer (Shift + Tab)
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
-- Close the current buffer (leader + x)
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close Buffer" })

-- Toggle terminal vertically (split)
map("n", "<leader>tv", "<cmd>vsplit | terminal<CR>", { desc = "Open terminal vertically" })

-- Toggle terminal horizontally (split)
map("n", "<leader>th", "<cmd>split | terminal<CR>", { desc = "Open terminal horizontally" })

map("n", "<leader>sv", ":vs<Space>", { desc = "Vertical split file" })
map("n", "<leader>sh", ":sp<Space>", { desc = "Horizontal split file" })
