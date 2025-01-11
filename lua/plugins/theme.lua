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
  },
}
