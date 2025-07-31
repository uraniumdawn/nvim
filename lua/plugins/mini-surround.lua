-- Add, delete, replace, find, highlight surrounding (like pair of parenthesis, quotes, etc.).
return {
  'echasnovski/mini.surround',
  version = '*',
  config = function(_, opts)
    require("mini.surround").setup({
      symbol = "▏",
      require('mini.indentscope').gen_animation.none()
    })
  end
}
