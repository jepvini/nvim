return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg = "none",
            },
          },
        },
      },
    },
  },
}
