--World's most stupid Neovim configuration file
--Enjoy the madness and pray it works

--Leader key is <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

--{[ options ]}
require("options")
--{[ keymaps ]}
require("keymaps")
--{[ lazy-bootstrap ]}
require("lazy-bootstrap")
--{[ pluggins]}
require("lazy-plugins")
