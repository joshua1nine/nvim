local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

ls.config.set_config({
	history = "true",
	updateevents = "TextChanged,TextChangedI",
})

-- <c-k> is my expand key
vim.keymap.set({ "i", "s" }, "<C-s>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

-- <c-j> is my jump backwards key
vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

-- <c-l> select within a list
vim.keymap.set({ "i" }, "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

ls.snippets = {
	all = {
		-- Available in any file
		ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
	},
}
