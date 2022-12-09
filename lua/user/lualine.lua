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
	orange = "#CE9178",
	lightblue = "#5CB6F8",
	yellow = "#ffaf00",
	pink = "#DDB6F2",
	purple = "#C586C0",
}

local theme = {
	normal = {
		a = { fg = c.fg, bg = c.lightblue, gui = "bold" },
		b = { fg = c.lightblue, bg = c.bg },
		c = { fg = c.fg, bg = c.bg },
		x = { fg = c.fg, bg = c.bg },
	},

	visual = {
		a = { fg = c.fg, bg = c.orange, gui = "bold" },
		b = { fg = c.orange, bg = c.bg },
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
		a = { fg = c.fg, bg = c.purple, gui = "bold" },
		b = { fg = c.purple, bg = c.bg },
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
		lualine_a = {
			{
				function()
					return " "
				end,
				padding = { left = 0, right = 0 }, -- We don't need space before this
			},
		},
		lualine_b = { "branch" },
		lualine_c = {},
		lualine_x = {
			{
				"filename",
				file_status = true, -- Displays file status (readonly status, modified status)
				newfile_status = false, -- Display new file status (new file means no write after created)
				path = 0, -- 0: Just the filename
				-- 1: Relative path
				-- 2: Absolute path
				-- 3: Absolute path, with tilde as the home directory

				shorting_target = 40, -- Shortens path to leave 40 spaces in the window
				-- for other components. (terrible name, any suggestions?)
				symbols = {
					modified = " ", -- Text to show when the file is modified.
					readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
					unnamed = "[No Name]", -- Text to show for unnamed buffers.
					newfile = "[New]", -- Text to show for new created file before first writting
				},
			},
			{
				"filetype",
				colored = true, -- Displays filetype icon in color if set to true
				icon_only = true, -- Display only an icon for filetype
				icon = { align = "right" }, -- Display filetype icon on the right hand side
				-- icon =    {'X', align='right'}
				-- Icon string ^ in table is ignored in filetype component
			},
			--[[ { ]]
			--[[ 	"buffers", ]]
			--[[ 	show_filename_only = true, -- Shows shortened relative path when set to false. ]]
			--[[ 	hide_filename_extension = false, -- Hide filename extension when set to true. ]]
			--[[ 	show_modified_status = true, -- Shows indicator when the buffer is modified. ]]
			--[[]]
			--[[ 	symbols = { ]]
			--[[ 		modified = " ", -- Text to show when the buffer is modified ]]
			--[[ 		alternate_file = "", -- Text to show to identify the alternate file ]]
			--[[ 		directory = "", -- Text to show when the buffer is a directory ]]
			--[[ 	}, ]]
			--[[ 	filetype_names = { ]]
			--[[ 		TelescopePrompt = "", ]]
			--[[ 		packer = "Packer", ]]
			--[[ 		alpha = "Alpha", ]]
			--[[ 		NvimTree = "", ]]
			--[[ 	}, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } ) ]]
			--[[ }, ]]
		},
		lualine_y = {},
		lualine_z = {
			{
				function()
					return " "
				end,
				padding = { left = 0, right = 0 }, -- We don't need space before this
			},
		},
	},
	tabline = {},
	extensions = {},
})
