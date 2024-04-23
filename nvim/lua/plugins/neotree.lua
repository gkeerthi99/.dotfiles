return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle<CR>", {})
    vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", {})
    require("neo-tree").setup({
      buffers = {
        follow_current_file = {
          enabled = true,
        }
      }
    })
  end,
}
