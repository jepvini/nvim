return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = {
          normal = {
            a = { bg = "#cba6f7", fg = "#000000", gui = "bold" },
            b = { bg = "#000000", fg = "#cba6f7" },
            c = { bg = "#000000", fg = "#cba6f7" },
          },
          insert = {
            a = { bg = "#89b4fa", fg = "#000000", gui = "bold" },
            b = { bg = "#000000", fg = "#89b4fa" },
            c = { bg = "#000000", fg = "#89b4fa" },
          },
          visual = {
            a = { bg = "#f9e2af", fg = "#000000", gui = "bold" },
            b = { bg = "#000000", fg = "#f9e2af" },
            c = { bg = "#000000", fg = "#f9e2af" },
          },
          replace = {
            a = { bg = "#f9e2af", fg = "#000000", gui = "bold" },
            b = { bg = "#000000", fg = "#f9e2af" },
            c = { bg = "#000000", fg = "#f9e2af" },
          },
          command = {
            a = { bg = "#a6e3a1", fg = "#000000", gui = "bold" },
            b = { bg = "#000000", fg = "#a6e3a1" },
            c = { bg = "#000000", fg = "#a6e3a1" },
          },
          inactive = {
            a = { bg = "#6c7086", fg = "#cba6f7", gui = "bold" },
            b = { bg = "#000000", fg = "#cba6f7" },
            c = { bg = "#000000", fg = "#cba6f7" },
          },
        },
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "NvimTree" },
        },
      },

      sections = {
        lualine_x = {
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = { fg = "#ff9e64" },
          },
        },
      },
    },
  },
}
