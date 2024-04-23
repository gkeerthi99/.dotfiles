return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "gbprod/none-ls-shellcheck.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.formatting.beautysh"),
        require("none-ls-shellcheck.diagnostics"),
        null_ls.builtins.formatting.prettier,
      },
    })
    vim.keymap.set("n", "<leader>format", vim.lsp.buf.format, {})
  end,
}
