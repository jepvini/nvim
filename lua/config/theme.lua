local colors = {
  black = "#000000",
  red = "#d34043",
  green = "#a6e3a1",
  yellow = "#f9e2af",
  blue = "#89b4fa",
  magenta = "#cba6f7",
  cyan = "#74c7ec",
  white = "#bac2de",
  black_b = "#6c7086",
  red_b = "#e82424",
  green_b = "#98cb6c",
  yellow_b = "#e6c984",
  blue_b = "#89dceb",
  magenta_b = "#af5fd7",
  cyan_b = "#94e2d5",
  white_b = "#e4e4e4",
}

vim.cmd.colorscheme("catppuccin")
--
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
-- vim.api.nvim_set_hl(0, "LineNr", { fg = colors.yellow })

-- lua_line_theme = {
--   normal = {
--     a = { bg = colors.magenta, fg = colors.black, gui = "bold" },
--     b = { bg = colors.black, fg = colors.magenta },
--     c = { bg = colors.black, fg = colors.magenta },
--   },
--   insert = {
--     a = { bg = colors.blue, fg = colors.black, gui = "bold" },
--     b = { bg = colors.black, fg = colors.blue },
--     c = { bg = colors.black, fg = colors.blue },
--   },
--   visual = {
--     a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
--     b = { bg = colors.black, fg = colors.yellow },
--     c = { bg = colors.black, fg = colors.yellow },
--   },
--   replace = {
--     a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
--     b = { bg = colors.black, fg = colors.yellow },
--     c = { bg = colors.black, fg = colors.yellow },
--   },
--   command = {
--     a = { bg = colors.green, fg = colors.black, gui = "bold" },
--     b = { bg = colors.black, fg = colors.green },
--     c = { bg = colors.black, fg = colors.green },
--   },
--   inactive = {
--     a = { bg = colors.gray, fg = colors.magent, gui = "bold" },
--     b = { bg = colors.black, fg = colors.magenta },
--     c = { bg = colors.black, fg = colors.magenta },
--   },
-- }
