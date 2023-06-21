
return {
    "hashivim/vim-terraform",
    "vim-syntastic/syntastic",
    "juliosueiras/vim-terraform-completion",
    "yorinasub17/vim-terragrunt",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"
    g = {
      syntastic_always_populate_loc_list=1,
      syntastic_auto_loc_list=1,
      syntastic_check_on_open=1,
      syntastic_check_on_wq=0,
      syntastic_terraform_tffilter_plan=1,
      terraform_completion_keys=1,
      terraform_registry_module_completion=0
    }
    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
