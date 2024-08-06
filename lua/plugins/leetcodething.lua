return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- required by telescope
		"MunifTanjim/nui.nvim",

		-- optional
		"nvim-treesitter/nvim-treesitter",
		"rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
			---@type string
			arg = "lc.nvim",
			lang = "c",

			cn = { -- leetcode.cn
				enabled = false, ---@type boolean
				translator = true, ---@type boolean
				translate_problems = true, ---@type boolean
			},

			storage = {
				home = vim.fn.stdpath("data") .. "/leetcode",
				cache = vim.fn.stdpath("cache") .. "/leetcode",
			},

			plugins = {
				non_standalone = true,
			},

			logging = true,

			injector = {},

			cache = {
				update_interval = 60 * 60 * 24 * 7,
			},

			console = {
				open_on_runcode = true, ---@type boolean

				dir = "row",

				size = {
					width = "90%",
					height = "75%",
				},

				result = {
					size = "60%",
				},

				testcase = {
					virt_text = true,

					size = "40%",
				},
			},

			description = {
				position = "left",

				width = "40%",

				show_stats = true, ---@type boolean
			},

			hooks = {
				---@type fun()[]
				["enter"] = {},

				---@type fun(question)[]
				["question_enter"] = {},

				---@type fun()[]
				["leave"] = {},
			},

			keys = {
				toggle = { "q" }, ---@type string|string[]
				confirm = { "<CR>" }, ---@type string|string[]

				reset_testcases = "r", ---@type string
				use_testcase = "U", ---@type string
				focus_testcases = "H", ---@type string
				focus_result = "L", ---@type string
			},

			theme = {},

			image_support = false,
		}
}

