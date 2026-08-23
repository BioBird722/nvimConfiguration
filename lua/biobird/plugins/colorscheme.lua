return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load immediately on startup
    priority = 1000, -- Make sure it loads before any other plugin
    config = function()
      -- Configure the theme options first
      require("tokyonight").setup({
        style = "night",      -- Choose: "storm", "night", "moon", or "day"
        transparent = true,  -- Set to true to use your terminal's background
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      
      -- Load the colorscheme
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Nord
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Example configuration if you want to customize Nord later:
      -- vim.g.nord_contrast = true
      -- vim.g.nord_borders = true
      vim.g.nord_disable_background = true
      
      -- Comment out the line below if you want TokyoNight to start first!
      -- vim.cmd([[colorscheme nord]])
    end,
  },

  -- Night Owl
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optional configuration options:
      require("night-owl").setup({
        transparent_background = true, -- Set to true for a transparent look
        italic_comments = true,
      })

      -- vim.cmd("colorscheme night-owl")
    end,
  },

   -- Catppuccin Theme
  {
    "catppuccin/nvim",
    name = "catppuccin", -- Set the name for easy referencing
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Choose your flavor: "latte", "frappe", "macchiato", or "mocha"
        transparent_background = true, -- Change to true if you want your WezTerm 'Deep' background to show through!
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope = true,
          },
        },
      })

      -- To make it your default startup theme, uncomment the line below:
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
