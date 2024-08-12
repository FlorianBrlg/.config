-- init.lua

-- Automatically install packer if not installed
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

-- Reload Neovim whenever you save this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call to load packer.nvim
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Initialize packer.nvim
return packer.startup(function(use)
  -- Let packer manage itself
  use 'wbthomason/packer.nvim'

  -- Add your plugins here

  use 'lervag/vimtex'
--  use 'junegunn/fzf', { 'do': { -> fzf#install() } }
--  use 'neoclide/coc.nvim', {'branch': 'release'}
--  use 'preservim/nerdtree'
--  use 'tpope/vim-commentary'

  -- Automatically set up configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)


--":PackerInstall" Install all plugins specified in the configuration.
--":PackerUpdate" Update all plugins.
--":PackerSync" Perform PackerUpdate and remove any plugins that are no longer in the configuration.
--":PackerClean" Remove any plugins that are no longer in the configuration.
--":PackerCompile" Compile the packer configuration to improve startup time.


-- Vimtex settings
--vim.g.vimtex_view_method = 'llpp'
--vim.g.vimtex_compiler_method = 'liveTex''
