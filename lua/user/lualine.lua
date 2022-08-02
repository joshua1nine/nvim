local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	options = {
		theme = "auto",
	},
	sections = {
		lualine_c = {
			{
				"buffers",
				show_filename_only = true, -- Shows shortened relative path when set to false.
				hide_filename_extension = false, -- Hide filename extension when set to true.
				show_modified_status = true, -- Shows indicator when the buffer is modified.

				symbols = {
					modified = " ●", -- Text to show when the buffer is modified
					alternate_file = "", -- Text to show to identify the alternate file
					directory = "", -- Text to show when the buffer is a directory
				},
			},
		},
	},
	tabline = {
  },
  	extensions = {},
})
