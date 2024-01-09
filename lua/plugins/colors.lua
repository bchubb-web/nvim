return {
	{ 
		"catppuccin/nvim", 
		name="catppuccin",
		lazy=false,
		config=function()
			require("catppuccin").setup({
			    highlight_overrides = {
				all = function(colors)
				    return { LineNr = { fg = "#ded7c3" }, }
				end,
			    },
			    transparent_background = true,
			    show_end_of_buffer = true,
			    styles = {
				keywords = { "bold" },
				properties = { "italic" },
			    },
			})
			vim.cmd("colorscheme catppuccin")
		end
	},
}
