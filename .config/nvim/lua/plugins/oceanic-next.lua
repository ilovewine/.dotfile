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

          -- Example 3: Dim the line numbers
          vim.api.nvim_set_hl(0, "LineNr", { fg = "#84b0fc" })
        end,
      })
    end,
  },
}
