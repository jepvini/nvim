return {
  {
    "kyazdani42/nvim-tree.lua",
    -- event = "VeryLazy",
    cmd = "NvimTreeFindFileToggle",
    keys = function()
      return {
        { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = "toggle nvim-tree" },
      }
    end,
    config = function()
      local function my_on_attach(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
        vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
        vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Expand folder or go to file"))
        vim.keymap.set("n", "L", api.node.open.edit, opts("Expand folder or go to file"))
        vim.keymap.set("n", "H", api.node.navigate.parent_close, opts("Close parent folder"))
        vim.keymap.set("n", "gh", api.tree.toggle_hidden_filter, opts("Toggle hiddem files"))
      end
      require("nvim-tree").setup({
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        update_focused_file = {
          enable = true,
        },
        on_attach = my_on_attach,
      })
    end,
  },
}
