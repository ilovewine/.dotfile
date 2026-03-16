return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        prolog = {},
      },
      setup = {
        prolog = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          local util = require("lspconfig.util")

          local root_files = { ".git", "pack.pl" }

          if not configs.prolog then
            configs.prolog = {
              default_config = {
                cmd = {
                  "swipl",
                  "-g",
                  "use_module(library(lsp_server)).",
                  "-g",
                  "lsp_server:main",
                  "-t",
                  "halt",
                  "--",
                  "stdio",
                },
                filetypes = { "prolog" },
                single_file_support = true,
                root_dir = util.root_pattern(unpack(root_files)),
                settings = {},
              },
              commands = {},
              docs = {
                description = [[
              Prolog LSP server
              ]],
              },
            }
          end
          lspconfig.prolog.setup(opts)
          vim.lsp.enable("prolog_ls")
        end,
      },
    },
  },
}
