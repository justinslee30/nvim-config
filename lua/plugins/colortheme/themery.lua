return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "tokyonight", "tokyonight-storm", "tokyonight-day", "tokyonight-night" },
			livePreview = true,
		})
	end,
}
