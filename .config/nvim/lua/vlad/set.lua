vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.o.signcolumn = "yes"

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
})
