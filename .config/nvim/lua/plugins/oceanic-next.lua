return {
  -- Install the Oceanic Next plugin
  {
    "mhartington/oceanic-next",
    lazy = false, -- Make sure we load this during startup
    priority = 1000, -- Load it before other plugins
  },

  -- Configure LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "OceanicNextLight",
    },
  },
}
