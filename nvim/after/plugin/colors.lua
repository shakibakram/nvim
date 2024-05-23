function Colorize(color)
	color = color or "zenbones"
	vim.cmd.colorscheme(color)
	
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", ctermbg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Colorize()
