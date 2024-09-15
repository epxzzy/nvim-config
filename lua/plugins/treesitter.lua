return {

	'nvim-treesitter/nvim-treesitter',
dependencies = {
    "LiadOz/nvim-dap-repl-highlights",
  },
	build= ":TSUpdate",
	config=function()
		 require('nvim-dap-repl-highlights').setup()
		local conf= require("nvim-treesitter.configs")

		conf.setup({
			ensure_installed = {"lua", "javascript", "typescript", "go","java", "html", "rust", "css", "c","dap_repl", "cpp"},
			highlight = { enable = true},
			indent = {enable = true},
		})
	end
}

