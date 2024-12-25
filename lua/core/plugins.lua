local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use {
	"chrisgrieser/nvim-origami",
	config = function() require("origami").setup({}) end, -- setup call needed
  }
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-orgmode/orgmode'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lualine/lualine.nvim'
   use({
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use{
  'folke/tokyonight.nvim'
}
use {'neoclide/coc.nvim', branch = 'release'}
use{'rebelot/kanagawa.nvim'}
use {
  'serenevoid/kiwi.nvim', 
  requires = { {'nvim-lua/plenary.nvim'} }
}

use{
  'CRAG666/code_runner.nvim'
}
use{'vimwiki/vimwiki'}
use{'goolord/alpha-nvim',
use { "ellisonleao/gruvbox.nvim" }
}
use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
use{'itchyny/calendar.vim'}
use{'lukas-reineke/indent-blankline.nvim'}
use 'jbyuki/nabla.nvim'
  if packer_bootstrap then



    require('packer').sync()
  end
end)
