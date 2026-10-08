local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ================================
-- GENERAL
-- ================================
map("n", "<Esc>", ":nohlsearch<CR>", opts)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>wq", ":wq<CR>", opts)

-- ================================
-- NAVIGATION
-- ================================
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keep cursor centered
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- ================================
-- FILE EXPLORER
-- ================================
map("n", "<leader>e", ":Neotree toggle<CR>", opts)
map("n", "<leader>ef", ":Neotree focus<CR>", opts)

-- ================================
-- TELESCOPE
-- ================================
map("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- ================================
-- LSP
-- ================================
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>d", vim.diagnostic.open_float, opts)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)

-- ================================
-- BUFFERS
-- ================================
map("n", "<leader>bn", ":bnext<CR>", opts)
map("n", "<leader>bp", ":bprevious<CR>", opts)
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- ================================
-- TERMINAL
-- ================================
map("n", "<leader>t", ":terminal<CR>", opts)
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- ================================
-- CUSTOM COMMANDS
-- ================================
vim.api.nvim_create_user_command("Mkcd", function(args)
    local dir = args.args
    vim.fn.mkdir(dir, "p")
    vim.cmd("cd " .. dir)
    print("Created and moved to: " .. dir)
end, { nargs = 1 })

-- Format
map("n", "<leader>fm", vim.lsp.buf.format, opts)

-- Run files
map("n", "<leader>rp", ":w<CR>:terminal python3 %<CR>", opts)
map("n", "<leader>rc", ":w<CR>:terminal g++ -o /tmp/out % && /tmp/out<CR>", opts)
map("n", "<leader>rj", ":w<CR>:terminal javac % && java %:r<CR>", opts)
map("n", "<leader>rn", ":w<CR>:terminal node %<CR>", opts)
