return {
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      toggler = {
        -- Line-comment toggle keymap
        line = "<leader>c",
        -- Block-comment toggle keymap
        block = "<leader>bc",
      },
      opleader = {
        -- Line-comment keymap
        line = "<leader>c",
        -- Block-comment keymap
        block = "<leader>b",
      },
      extra = {
        -- Add comment at the end of line
        eol = "<leader>a",
      },
    },
  },
}
