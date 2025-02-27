-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
  },
  opts = {
    filesystem = {
      window = {
        width = math.floor(vim.o.columns * 0.30),
        mappings = {
          ["\\"] = "close_window",
        },
      },
      components = {
        type = function()
          return {}
        end,
        file_size = function()
          return {}
        end,
        last_modified = function()
          return {}
        end,
      },
    },
  },
}
