return {
	"xiyaowong/transparent.nvim",
priority=13,
	config= function()
		vim.keymap.set('n', '<leader>tt', ':TransparentToggle<CR>', {})
		require("transparent").setup({
			groups =
			{  'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier', 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText', 'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
			'EndOfBuffer',
		},
		extra_groups = {}, -- table: additional groups that should be cleared
		exclude_groups = {}, -- table: groups you don't want to clear
	})
end
}
