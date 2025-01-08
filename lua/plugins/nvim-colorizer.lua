return {
  {
    "norcalli/nvim-colorizer.lua",
    cmd = { "ColorizerAttachToBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle" },
    ft = { "lua", "css", "scss" },
    opts = {
      lua = {
        names = false,
      },
      css = {
        names = false,
        RRGGBBAA = true,
      },
      scss = {
        names = false,
        RRGGBBAA = true,
      },
    },
  },
}
