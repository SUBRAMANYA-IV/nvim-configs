require("core.keymaps")
require("core.plugins")
require("core.plugin_config")



-- user defined function 
vim.api.nvim_create_user_command('NewNote','call nvim_buf_set_lines(0, 0, 0, v:true, ["test text"])',{})
vim.api.nvim_create_user_command('Cs300','call (nvim-tree-api.tree.reload)',{})
-- color scheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme tokyonight]])

-- setup for vimwiki

vim.cmd('set nocompatible')
vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.cmd('set colorcolumn=80')

-- Automatically save and restore folds

-- user settings
vim.opt.clipboard = "unnamedplus"

-- folds save
  

