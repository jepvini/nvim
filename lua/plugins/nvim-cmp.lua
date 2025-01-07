return {
  {
    -- Autocompletion
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "insertEnter",
    dependencies = {
      -- Icon and text
      "onsails/lspkind.nvim",

      -- Snippet Engine & its associated nvim-cmp source
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Adds LSP completion capabilities
      "hrsh7th/cmp-nvim-lsp",

      -- Adds a number of user-friendly snippets
      "rafamadriz/friendly-snippets",

      -- Adds path search
      "FelipeLema/cmp-async-path",

      -- Adds dictionary support
      "uga-rosa/cmp-dictionary",

      -- Buffer complete
      "hrsh7th/cmp-buffer",

      -- Buffer lines
      "amarakon/nvim-cmp-buffer-lines",

      -- Math calc
      "hrsh7th/cmp-calc",
    },

    opts = function(_, opts)
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()
      luasnip.config.setup({})
      require("cmp_dictionary").setup({
        paths = { "/home/leo/.config/nvim/others/en.dict" },
        exact_length = 4,
        first_case_insensitive = true,
      })

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = {
          ["<CR>"] = cmp.mapping(function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
              if luasnip.expandable() then
                luasnip.expand()
              else
                cmp.confirm({
                  select = true,
                })
              end
            else
              fallback()
            end
          end),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<C-e>"] = cmp.mapping.abort(),
        },

        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer", keyword_length = 3 },
          { name = "async_path" },
          -- { name = "buffer-lines" },
          { name = "calc" },
          {
            name = "dictionary",
            keyword_length = 4,
          },
        },

        formatting = {
          fields = { "abbr", "menu", "kind" },
          expandable_indicator = false,
          format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = {
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
              buffer = "[Buffer]",
              async_path = "[Path]",
              calc = "[Calc]",
              dictionary = "[Dict]",
            },
          }),
        },

        window = {
          completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
          },
        },
      })
    end,
  },
}
