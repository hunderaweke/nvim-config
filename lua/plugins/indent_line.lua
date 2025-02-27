return { -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {},
  config = function()
    require('ibl').setup {
      exclude = {
        filetypes = { 'dashboard' },
      },
      indent = {
        char = '·',
      },
    }
  end,
}
