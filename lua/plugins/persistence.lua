return -- Lua
{
  "folke/persistence.nvim",
  event = { "BufReadPre", "BufNewFile" }, -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
}
