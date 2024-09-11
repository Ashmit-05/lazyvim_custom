return {
  'nvim-tree/nvim-web-devicons',
  {
    'dinhhuy258/sfm.nvim',
    config = function()
      require("sfm").setup()
    end
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        shortcut_type = 'number',
        config = {
          week_header = { enable = true },
          packages = { enable = false },
          project = { enable = false, limit = 2 },
          mru = { limit = 9 },
        }
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    {'romgrk/barbar.nvim',
      dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
      },
      init = function() vim.g.barbar_auto_setup = false end,
      opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
      },
      version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
  },
  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  },
}
