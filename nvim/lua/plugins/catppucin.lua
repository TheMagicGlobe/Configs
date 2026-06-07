return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Make sure it loads before anything else
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha") -- Options: latte, frappe, macchiato, mocha
		end,
	},
}
