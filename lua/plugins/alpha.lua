return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	lazy = false,
	config = function()
		require("alpha").setup(require("alpha.themes.startify").config)
	end,
}
