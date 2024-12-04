return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"tokyonight",
				"tokyonight-storm",
				"tokyonight-day",
				"tokyonight-night",
				"catppuccin-mocha",
				"catppuccin-latte",
				"catppuccin-frappe",
				"catppuccin-macchiato",
				"kanagawa-lotus",
				"kanagawa-wave",
				"kanagawa-dragon",
			},
			livePreview = true,
		})
	end,
}
