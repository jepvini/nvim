return {
  {
    "norcalli/nvim-colorizer.lua",
    cmd = { "ColorizerAttachToBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle" },
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
