-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
  'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
  {
    'tiagovla/tokyodark.nvim',
    opts = {},
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'tokyodark'
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        hide = {
          statusline = true, -- hide statusline default is true
          tabline = true, -- hide the tabline
          winbar = true, -- hide winbar
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    opts = {},
  },
}
