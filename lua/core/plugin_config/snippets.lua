local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local n = ls.snippet_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node

ls.add_snippets(nil, {
	all = {
		s({
			trig = "log",
			name = "Console Log",
			dscr = "Creates a console.log()",
		}, {
			t({ "console.log(" }), i(0), t({ ")" })
		}),
	},
	typescriptreact = {
		s({
			trig = 'rmap',
			name = 'React Map',
			dscr = 'Array map that returns JSX'
		}, {
			i(1, "array"), t({ "?.map((" }), i(2, "item"), t({ ", index) => {" }),
			t({ "", "   return (" }),
			t({ "", "      <div key={index}>" }),
			i(0),
			t({ "", "      </div>" }),
			t({ "", "   )" }),
			t({ "", "})" }),
		})
	}
})
