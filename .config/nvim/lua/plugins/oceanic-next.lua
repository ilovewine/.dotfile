return {
  -- Install the Oceanic Next plugin
  {
    "mhartington/oceanic-next",
    lazy = false, -- Make sure we load this during startup
    priority = 100000, -- Load it before other plugins
    init = function()
      -- Optional: Enable built-in bold and italic support
      vim.g.oceanic_next_terminal_bold = 1
      vim.g.oceanic_next_terminal_italic = 1

      -- 2. Hook into the ColorScheme event to edit colors
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "OceanicNextLight", -- Must match the exact colorscheme name
        callback = function()
          -- Example 1: Make the main background transparent
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

          -- Example 2: Change comment colors and make them italic
          vim.api.nvim_set_hl(0, "Comment", { fg = "#ff9e64", italic = true })

          vim.api.nvim_set_hl(0, "LineNr", { fg = "#3ba4b7" })
          vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#aeaec2" })

          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#e6e6e6" })
        end,
      })
    end,
  },
  { -- Configure LazyVim to use default colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "OceanicNextLight",
    },
  },
}
