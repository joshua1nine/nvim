return {
	"akinsho/bufferline.nvim",
   enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
         indicator = {
            style = { 'none' }
         },
			separator_style = "thick", -- "slant" | "slope" | "thick" | "thin" |
         always_show_bufferline = false,
         show_buffer_close_icons = false,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
}
