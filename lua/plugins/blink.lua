return {
   {
      "saghen/blink.cmp",
      enabled = false,
      dependencies = "rafamadriz/friendly-snippets",
      version = "*",
      opts = {
         keymap = { preset = "enter" },
         appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
         },
         sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            cmdline = {}
         },
         completion = {
            menu = {
               draw = {
                  components = {
                     kind_icon = {
                        ellipsis = false,
                        text = function(ctx)
                           local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                           return kind_icon
                        end,
                        -- Optionally, you may also use the highlights from mini.icons
                        highlight = function(ctx)
                           local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                           return hl
                        end,
                     },
                  },
               },
            },
         },
      },
      opts_extend = { "sources.default" },
   },
}
