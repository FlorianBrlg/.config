return{

	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "zathura"
			--vim.g.vimtex_compiler_method = "latex"
		end
	},

	{
		"Shougo/deoplete.nvim",

		config = function()
			vim.cmd([[
			let g:deoplete#enable_at_startup = 1
			]])
		end
	},
	
	{ 
		"catppuccin/nvim", 
		name = "catppuccin", 
		priority = 1000,
		--flavour = "mocha"
		--config = function()
		--	vim.cmd.colorscheme "catppuccin"
		--end
	},

	{
    		'SirVer/ultisnips',
    		dependencies = {
      			'honza/vim-snippets'  -- Recommended: A collection of snippets for various languages
    		},
    		config = function()
      		-- UltiSnips specific configurations can be added here
		
		vim.g.UltiSnipsEditSplit = "horizontal" --Where to open UltiSnipsEdit window

		

      		vim.g.UltiSnipsExpandTrigger = '<tab>'
		vim.g.UltiSnipsListSnippets = "<c-tab>"

		vim.g.UltiSnipsSnippetDirectories={'~/.config/nvim/lazy/vim-snippets/UltiSnips'} --todo: MAKE THIS WORK!!!!!!!!!!!!!
      		
		--vim.g.UltiSnipsJumpForwardTrigger = '<c-j>'
      		--vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'
    		end
  }
	



}
