-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: paq-nvim
--- https://github.com/savq/paq-nvim

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

vim.cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq
paq { 'nvim-telescope/telescope-fzy-native.nvim', run='git submodule update --init --recursive' }

-- Add packages
require 'paq' {
  'savq/paq-nvim';  -- let paq manage itself
  'Yggdroot/indentLine';
  'hoob3rt/lualine.nvim';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-nvim-lsp';
  'neovim/nvim-lspconfig';
  'kyazdani42/nvim-tree.lua';
  'kyazdani42/nvim-web-devicons';
  'projekt0n/github-nvim-theme';
}
