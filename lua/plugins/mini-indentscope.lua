-- Indent lines
return {
  'echasnovski/mini.indentscope',
  version = '*',
  config = function(_, opts)
    require('mini.indentscope').setup({
      draw = {
        delay = 50,
        animation = require('mini.indentscope').gen_animation.none(),
      },
      symbol = '│',
      options = {
        try_as_border = true
      }
    })
  end
}