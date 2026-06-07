-- [[ Configure and install plugins ]]
require("lazy").setup({
	"tpope/vim-sleuth",

	require("plugins/gitsigns"),

	require("plugins/which-key"),

	require("plugins/telescope"),

	require("plugins/lspconfig"),

	require("plugins/conform"),

	require("plugins/cmp"),

	require("plugins/todo-comments"),

	require("plugins/mini"),

	require("plugins/treesitter"),

	require("plugins/debug"),

	require("plugins/indent_line"),

	require("plugins/lint"),

	require("plugins/autopairs"),

	require("plugins/neo-tree"),

	require("plugins/catppucin"),
})
