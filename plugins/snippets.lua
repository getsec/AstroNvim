return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "2.0.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function(plugin, opts)
        -- include the default astronvim config that calls the setup call
        require "plugins.configs.luasnip"(plugin, opts)
        -- load snippets paths
        require("luasnip.loaders.from_vscode").lazy_load {
          -- this can be used if your configuration lives in ~/.config/nvim
          -- if your configuration lives in ~/.config/astronvim, the full path
          -- must be specified in the next line
          paths = { "./lua/user/snippets" }
        }
      end,
	},
	{ "rafamadriz/friendly-snippets" }
}


