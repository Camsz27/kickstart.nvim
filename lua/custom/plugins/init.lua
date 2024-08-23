-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{ 'nvim-treesitter/nvim-treesitter-context' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup {
				options = {
					icones_enabled = true,
					theme = 'dracula-nvim'
				}
			}
		end
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'doom',
				config = {
					header = {
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
						'████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
						'██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
						'██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
						'██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
						'╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',

					},
					center = {
						{ action = ':Telescope find_files', desc = ' Find File', icon = '󰮗', key = 'f' },
						{ action = 'ene | startinsert', desc = ' New File', icon = '', key = 'n' },
						{ action = ':Telescope oldfiles', desc = ' Old Files', icon = '', key = 'r' },
						{ action = 'tabnew $MYVIMRC', desc = ' Config', icon = '', key = 'c' },
						{ action = 'Lazy', desc = ' Lazy', icon = '󰒲', key = 'l' },
						{ action = function() vim.api.nvim_input('<cmd>qa<cr>') end, desc = ' Quit', icon = '󰈆', key = 'q' },
					},
				}
			}
		end,
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
}
