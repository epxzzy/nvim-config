return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opt = {
	filesystem = {
      		filtered_items = {
				hide_dotfiles = false,
				visible = true,
				show_hidden_count = true,
			}
		}
	},
	config= function()
		vim.keymap.set('n', '<leader>PT', ':Neotree filesystem toggle right<CR>', {})
		vim.keymap.set('n', '<leader>pt', ':Neotree filesystem reveal right<CR>', {})
	end
}



