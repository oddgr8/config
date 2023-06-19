local mytheme = require("lualine.themes.auto")

-- TODO: Match with personal colorscheme
-- Sets custom background when
-- nvim is in command mode
mytheme.command = {
	a = {
		gui = "bold",
		bg = "#FFDA7B",
		fg = "#000000",
	},
}

require("lualine").setup({
	options = { theme = mytheme },
	...,
})
