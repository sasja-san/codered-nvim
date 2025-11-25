
# codered

Adaptation of the VS Code Red theme to neovim.
Source code for [melange](https://github.com/savq/melange-nvim)
helped a lot in the making of this.

Usage:
```lua
vim.pack.add({
  { src = "https://github.com/sasja-san/codered-nvim" },
})
vim.cmd("colorscheme codered")
```



## Recomended Plugins, and Their Configurations

`mini.cursorword` can be switched for
`RRethy/vim-illuminate` (if that's prefered).

```lua
vim.pack.add({
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/nvim-mini/mini.cursorword" }, 
  { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },
})

require("ibl").setup()
require("mini.cursorword").setup()
-- VS Code uses four colors. Omit `highlight` for seven.
require("rainbow-delimiters.setup").setup( {
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterRed",
    "RainbowDelimiterBlue",
    "RainbowDelimiterViolet",
  }
})
```



## Font Properties

If you want to control which of the font variants to use,
this example code should help you. All five variants
must be declared in the table for this to work properly.

```lua
local font_vars = {
  bold          = true,
  italic        = true
  underline     = false,
  undercurl     = true,
  strikethrough = false,
}
vim.g.codered_enable_font_variants = font_vars
```



## Cursor Issues

To make this theme look the best either set your terminal to **not**
invert (flip bg & fg colors) its cursor colors, or use a graphical frontend
for neovim.
Both [neovide](https://github.com/neovide/neovide) and
[nvim-qt](https://github.com/equalsraf/neovim-qt) are good clients.

There is also a variable `vim.g.codered_fix_termcursor` which will
mess with the `guicursor` configuration. Set this to `false` if
you want to keep your `guicursor` setting the way it is.

For alacritty, this config might help:
```toml
[colors.cursor]
text = "CellForeground"
```

