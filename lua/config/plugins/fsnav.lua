--- @type LazySpec
return {
  'kelly-lin/ranger.nvim',

  config = function()
    local ranger = require 'ranger-nvim'

    ranger.setup {
      replace_netrw = true,
      ui = {
        width = 0.8,
        height = 0.9,
        border = 'rounded',
      },
    }

    vim.keymap.set('n', '<leader>of', function()
      ranger.open()
    end, { desc = 'Open file explorer' })
  end,
}
