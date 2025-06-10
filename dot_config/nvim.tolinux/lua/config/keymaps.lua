-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

vim.keymap.set(
  "n",
  "<SPACE>t",
  ":ToggleTerm direction=vertical size=70<CR>",
  { noremap = true, silent = true, desc = "Toggle Terminal" }
)

function _G.set_terminal_keymaps()
  local terminal_opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], terminal_opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], terminal_opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], terminal_opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], terminal_opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], terminal_opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], terminal_opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], terminal_opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("i", "<C-M-h>", "<Left>", opts)
vim.keymap.set("i", "<C-M-l>", "<Right>", opts)
vim.keymap.set("i", "<C-M-j>", "<Down>", opts)
vim.keymap.set("i", "<C-M-k>", "<Up>", opts)
