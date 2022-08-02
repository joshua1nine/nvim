local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local c = {
	bg = nil,
	bg2 = "#373737",
	fg = "#ffffff",
	red = "#f44747",
	green = "#6A9955",
	blue = "#0a7aca",
	lightblue = "#5CB6F8",
	yellow = "#ffaf00",
	pink = "#DDB6F2",
}

local theme = {
	normal = {
		a = { fg = c.fg, bg = c.blue, gui = "bold" },
		b = { fg = c.lightblue, bg = c.bg },
		c = { fg = c.fg, bg = c.bg },
		x = { fg = c.fg, bg = c.bg },
	},

	visual = {
		a = { fg = c.fg, bg = c.yellow, gui = "bold" },
		b = { fg = c.yellow, bg = c.bg },
	},

	inactive = {
		a = { fg = c.fg, bg = c.bg, gui = "bold" },
		b = { fg = c.fg, bg = c.fg },
		x = { fg = c.bg2, bg = c.bg },
	},

	replace = {
		a = { fg = c.bg, bg = c.red, gui = "bold" },
		b = { fg = c.red, bg = c.bg },
		c = { fg = c.fg, bg = c.bg },
	},

	insert = {
		a = { fg = c.fg, bg = c.green, gui = "bold" },
		b = { fg = c.green, bg = c.bg },
		c = { fg = c.fg, bg = c.bg },
	},

	command = {
		a = { fg = c.fg, bg = c.pink, gui = "bold" },
		b = { fg = c.pink, bg = c.bg },
		c = { fg = c.fg, bg = c.bg },
	},
}

lualine.setup({
	options = {
		theme = theme,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = {},
		lualine_x = {
			{
				"buffers",
				show_filename_only = true, -- Shows shortened relative path when set to false.
				hide_filename_extension = false, -- Hide filename extension when set to true.
				show_modified_status = true, -- Shows indicator when the buffer is modified.

				symbols = {
					modified = " ", -- Text to show when the buffer is modified
					alternate_file = "", -- Text to show to identify the alternate file
					directory = "", -- Text to show when the buffer is a directory
				},
				filetype_names = {
					TelescopePrompt = "",
					packer = "Packer",
					alpha = "Alpha",
          NvimTree = ""
				}, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
			},
		},
		lualine_y = {},
		lualine_z = { "progress" },
	},
	tabline = {},
	extensions = {},
})
