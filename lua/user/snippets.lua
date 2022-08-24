local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

ls.snippets = {
	all = {
		-- Available in any file
		ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
	},
}
