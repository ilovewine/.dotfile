return {
  -- Install the Oceanic Next plugin
  {
    "wincent/base16-nvim",
    lazy = true, -- Make sure we load this during startup
    priority = 1000, -- Load it before other plugins
  },
  { -- Configure LazyVim to use default colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "windows-95",
    },
  },
}
