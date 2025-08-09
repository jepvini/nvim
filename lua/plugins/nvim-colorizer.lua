return {
  {
    "norcalli/nvim-colorizer.lua",
    event = "VeryLazy",
    cmd = { "ColorizerAttachToBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle" },
    ft = { "lua", "css", "scss" },
    opts = {
      lua = {
        names = false,
      },
      css = {
        names = false,
        RRGGBBAA = true,
        rgba = true,
        rgb = true,
      },
      scss = {
        names = false,
        RRGGBBAA = true,
        rgba = true,
        rgb = true,
      },
    },
  },
}
