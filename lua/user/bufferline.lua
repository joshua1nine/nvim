local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

-- bufferline.setup {
--   options = {
--     mode = "buffers",
--     close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
--     right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
--     offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
--     separator_style = "thin", -- | "thick" | "thin" | "slant" | "padded_slant" | { 'any', 'any' },
--     tab_size = 18,
--     color_icons = true, -- whether or not to add the filetype icon highlights
--     show_buffer_icons = true, -- disable filetype icons for buffers
--     show_buffer_close_icons = false,
--     show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
--     show_close_icon = false,
--     show_tab_indicators = true,
--     diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
--     diagnostics_update_in_insert = true, -- updates buffer diagnostic highlight in real time
--   },
-- }

bufferline.setup({
	options = {
		show_buffer_close_icons = false,
		buffer_close_icon = "",
		close_command = "Bdelete %d",
		close_icon = "",
    color_icons = true,
		indicator_icon = " ",
		left_trunc_marker = "",
		modified_icon = "●",
		offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
		right_mouse_command = "Bdelete! %d",
		right_trunc_marker = "",
		show_close_icon = false,
		show_tab_indicators = true,
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = true, -- updates buffer diagnostic highlight in real time
	},
	highlights = {
		fill = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "StatusLineNC" },
		},
		background = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "StatusLine" },
		},
		buffer_visible = {
			-- gui = "",
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		buffer_selected = {
			-- gui = "",
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		separator = {
			guifg = { attribute = "bg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "StatusLine" },
		},
		separator_selected = {
			guifg = { attribute = "fg", highlight = "Special" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		separator_visible = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "StatusLineNC" },
		},
		close_button = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "StatusLine" },
		},
		close_button_selected = {
			guifg = { attribute = "fg", highlight = "normal" },
			guibg = { attribute = "bg", highlight = "normal" },
		},
		close_button_visible = {
			guifg = { attribute = "fg", highlight = "normal" },
			guibg = { attribute = "bg", highlight = "normal" },
		},
	},
})
