return {
	"ellisonleao/gruvbox.nvim",
	config = function()
		vim.o.termguicolors = true
		vim.cmd.colorscheme("gruvbox")
		vim.api.nvim_set_hl(0, "Normal", { guibg = none })
	end,
}
