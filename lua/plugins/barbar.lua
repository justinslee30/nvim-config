return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	lazy = false,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
		auto_hide = 1,
		icons = {
			-- Configure the base icons on the bufferline.
			-- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
			buffer_index = false,
			buffer_number = false,
			button = "",
			-- Enables / disables diagnostic symbols
			diagnostics = {
				[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
				[vim.diagnostic.severity.WARN] = { enabled = false },
				[vim.diagnostic.severity.INFO] = { enabled = false },
				[vim.diagnostic.severity.HINT] = { enabled = true },
			},
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
			filetype = {
				-- Sets the icon's highlight group.
				-- If false, will use nvim-web-devicons colors
				custom_colors = false,

				-- Requires `nvim-web-devicons` if `true`
				enabled = true,
			},
			separator = { left = "▎", right = "" },

			-- If true, add an additional separator at the end of the buffer list
			separator_at_end = true,

			-- Configure the icons on the bufferline when modified or pinned.
			-- Supports all the base icon options.
			modified = { button = "●" },
			pinned = { button = "", filename = true },

			-- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
			preset = "default",

			-- Configure the icons on the bufferline based on the visibility of a buffer.
			-- Supports all the base icon options, plus `modified` and `pinned`.
			alternate = { filetype = { enabled = false } },
			current = { buffer_index = true },
			inactive = { button = "×" },
			visible = { modified = { buffer_number = false } },
		},
		sidebar_filetypes = {
			NvimTree = true,
		},
	},
	keys = {
		{ "<leader>,", "<cmd>BufferPrevious<cr>", "n", desc = "BufferPrevious" },
		{ "<leader>.", "<cmd>BufferNext<cr>", "n", desc = "BufferNext" },
		{ "<leader>bc", "<cmd>BufferClose<cr>", "n", desc = "BufferClose" },
		{ "<leader>1", "<cmd>BufferGoto 1<cr>", "n", desc = "BufferGoto 1" },
		{ "<leader>2", "<cmd>BufferGoto 2<cr>", "n", desc = "BufferGoto 2" },
		{ "<leader>3", "<cmd>BufferGoto 3<cr>", "n", desc = "BufferGoto 3" },
		{ "<leader>4", "<cmd>BufferGoto 4<cr>", "n", desc = "BufferGoto 4" },
		{ "<leader>5", "<cmd>BufferGoto 5<cr>", "n", desc = "BufferGoto 5" },
		{ "<leader>6", "<cmd>BufferGoto 6<cr>", "n", desc = "BufferGoto 6" },
		{ "<leader>7", "<cmd>BufferGoto 7<cr>", "n", desc = "BufferGoto 7" },
		{ "<leader>8", "<cmd>BufferGoto 8<cr>", "n", desc = "BufferGoto 8" },
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
