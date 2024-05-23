require("lc3.profile")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", 	
        lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = {'nvim-lua/plenary.nvim'}},
	{"rose-pine/neovim", name = "rose-pine"},
	{'nvim-treesitter/nvim-treesitter', name = "treesitter"},
    {'alligator/accent.vim', name = "alligator"},
	{'ThePrimeagen/harpoon', name = "harpoon"},
    {'rktjmp/lush.nvim', name = "lush"},
    {"mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim"},
    {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
    {"ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" }},
    -- lsp-zero-essentials
	{'VonHeikemen/lsp-zero.nvim', name = "lsp_zero", branch = 'v3.x'},
  	{'williamboman/mason.nvim', name = "mason"},
  	{'williamboman/mason-lspconfig.nvim', name = "mason_lspconfig"},
  	{'neovim/nvim-lspconfig', name = "nvim_lspconfig"},
  	{'hrsh7th/cmp-nvim-lsp', name = "nvim_lspcmp"},
  	{'hrsh7th/nvim-cmp', name = "nvim_cmp"},
    {"L3MON4D3/LuaSnip", name = "LuaSnip", version = "v2.2.0", build = "make install_jsregexp"},
    -- nvim-jdtls
    {'mfussenegger/nvim-jdtls'},

    -- Autopair
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
    },

    -- Project.nvim
    {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup {}
    end
    },

    {
        'nvim-java/nvim-java',
        dependencies = {
            'nvim-java/lua-async-await',
            'nvim-java/nvim-java-core',
            'nvim-java/nvim-java-test',
            'nvim-java/nvim-java-dap',
            'MunifTanjim/nui.nvim',
            'neovim/nvim-lspconfig',
            'mfussenegger/nvim-dap',
            {
                'williamboman/mason.nvim',
                opts = {
                    registries = {
                        'github:nvim-java/mason-registry',
                        'github:mason-org/mason-registry',
                    },
                },
            }
        },
    }
})
