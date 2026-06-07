--Basic options
vim.opt.relativenumber = true
vim.opt.mouse = "a"

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = false

vim.opt.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split"

vim.opt.cursorline = true

vim.opt.scrolloff = 15

vim.opt.tabstop = 4 -- Set the number of visual spaces per tab
vim.opt.shiftwidth = 4 -- Set the number of spaces for auto-indents
vim.opt.expandtab = true -- Convert tabs to spaces
