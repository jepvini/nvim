return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    opts = {
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "ini",
        "json",
        "latex",
        "lua",
        "markdown",
        "nix",
        "python",
        "rust",
        "toml",
        "yaml",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          scope_incremental = "<CR>",
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        },
      },
    },
  },
}
