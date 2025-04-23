return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },
    {
        "andweeb/presence.nvim",
	    lazy = false,
        opts = {
	    	-- General options
	    	auto_update = true,
	    	neovim_image_text = "Neovim",
	    	main_image = "neovim",
	    	enable_line_number = true,
	    	show_time = true,

	    	-- Text options
	    	editing_text = "Nuking %s",
	    	file_explorer_text = "Browsing %s",
	    	git_commit_text = "Commiting",
	    	plugin_manager_text = "Being unproductive",
	    	reading_text = "Scanning %s",
	    	workspace_text = "Destroying %s",
	    	line_number_text = "Line %s/%s",
	    },
    }, 
    {   
        "neovim/nvim-lspconfig",
	    lazy = false,
        opts = {
	    	inlay_hints = { enabled = vim.fn.has("nvim-0.10") == 1 },
	    },
    },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
            "tinymist",
  		},
  	},
  },
  
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
    {
        "lervag/vimtex",
        lazy = false,
	    config = function()
	    	vim.api.nvim_create_autocmd({ "FileType" }, {
	    		group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
	    		pattern = { "bib", "tex" },
	    		callback = function()
	    			vim.wo.conceallevel = 2
	    		end,
	    	})

	    	vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
	    	vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

	    	vim.g.vimtex_view_method = "zathura"
	    end,
    },
    {
        "iamcco/markdown-preview.nvim",
        lazy = false,
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        'chomosuke/typst-preview.nvim',
        lazy = false, -- or ft = 'typst'
        version = '1.*',
        opts = {}, -- lazy.nvim will implicitly calls `setup {}`
    },
}
