-- Put in: ~/.config/nvim/init.lua

-- Options
vim.opt.number = true
vim.opt.relativenumber = true

-- Keymaps
vim.keymap.set("i", "kj", "<Esc>")

-- Plugins
vim.pack.add({
  "https://github.com/oxfist/night-owl.nvim",
})

-- Theme
require("night-owl").setup()
vim.cmd.colorscheme("night-owl")

-- Line length guides
local colorcolumns = {
  python = "89",
  lua = "121",
  gitcommit = "51,73",
}

local group = vim.api.nvim_create_augroup("LineLengthGuides", { clear = true })

vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter" }, {
  group = group,
  callback = function()
    vim.opt_local.colorcolumn = colorcolumns[vim.bo.filetype] or ""
  end,
})

