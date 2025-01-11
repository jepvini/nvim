return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- use the night style
    style = "storm",
    transparent = true,

    -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    on_colors = function(colors)
      colors.hint = colors.orange
      colors.error = "#ff0000"
    end,

    on_highlights = function(hl, c)
      local prompt = "#2d3149"
      hl.TelescopeNormal = {
        bg = c.transparent,
        fg = c.transparent,
      }
      hl.TelescopeBorder = {
        bg = c.transparent,
        fg = c.transparent,
      }
      hl.TelescopePromptNormal = {
        bg = c.transparent,
      }
      hl.TelescopePromptBorder = {
        bg = c.transparent,
        fg = "#af5fd7",
      }
      hl.TelescopePromptTitle = {
        bg = c.transparent,
        fg = c.prompt,
      }
      hl.TelescopePreviewTitle = {
        bg = c.transparent,
        fg = c.transparent,
      }
      hl.TelescopeResultsTitle = {
        bg = c.transparent,
        fg = c.transparent,
      }
    end,
  },
}
