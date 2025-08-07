return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
      untracked = { text = "▎" },
    },
    signs_staged = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
    },

    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gitsigns.nav_hunk("next")
        end
      end)

      map("n", "[c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gitsigns.nav_hunk("prev")
        end
      end)

      -- Actions
      map("n", "<leader>os", gitsigns.stage_hunk)
      map("n", "<leader>or", gitsigns.reset_hunk)

      map("v", "<leader>os", function()
        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end)

      map("v", "<leader>or", function()
        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end)

      map("n", "<leader>oS", gitsigns.stage_buffer)
      map("n", "<leader>oR", gitsigns.reset_buffer)
      map("n", "<leader>op", gitsigns.preview_hunk)
      map("n", "<leader>oi", gitsigns.preview_hunk_inline)

      map("n", "<leader>ob", function()
        gitsigns.blame_line({ full = true })
      end)

      map("n", "<leader>od", gitsigns.diffthis)

      map("n", "<leader>oD", function()
        gitsigns.diffthis("~")
      end)

      map("n", "<leader>oQ", function()
        gitsigns.setqflist("all")
      end)
      map("n", "<leader>oq", gitsigns.setqflist)

      -- Toggles
      map("n", "<leader>tb", gitsigns.toggle_current_line_blame)
      map("n", "<leader>td", gitsigns.toggle_deleted)
      map("n", "<leader>tw", gitsigns.toggle_word_diff)

      -- Text object
      map({ "o", "x" }, "ih", gitsigns.select_hunk)
    end,
  },
}
