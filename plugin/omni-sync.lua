M = {}

local state = {
	floating = {
		buf = -1,
		win = -1,
	},
}

local function create_floating_window(opts)
	opts = opts or {}

	local width = opts.width or math.floor(vim.o.columns * 0.4)
	local height = opts.height or math.floor(vim.o.lines * 0.1)

	-- Calculate the position to center the window
	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.lines - height) / 2)

	-- Create buffer
	local buf = vim.api.nvim_create_buf(false, true)

	local win_config = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		style = "minimal",
		border = "rounded",
	}

	-- Create the floating window
	local win = vim.api.nvim_open_win(buf, true, win_config)

	return { buf = buf, win = win }
end

local keymap = function(mode, key, callback)
	vim.keymap.set(mode, key, callback, {
		buffer = state.floating.buf,
	})
end

M.toggle_terminal = function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = create_floating_window({ buf = state.floating.buf })
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.term()
			vim.cmd.startinsert()

			local buf = vim.api.nvim_get_current_buf()
			print(buf)
			local job_id = 0

			keymap("t", "q", "<C-\\><C-n><cmd>bd!<cr>")

			job_id = vim.bo.channel

			vim.fn.chansend(job_id, { "omni-sync-dev", "" })

		end
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
end

vim.api.nvim_create_user_command("OmniSync", M.toggle_terminal, {})

vim.keymap.set({ "n" }, "<leader>od", "<cmd>OmniSync<CR>")

return M
