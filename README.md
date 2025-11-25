# VS Code Red Colorscheme for NeoVim

Adaptation of the VS Code Red theme to neovim.
Code from the theme [melange](https://github.com/savq/melange-nvim)
helped a lot in the making of this.

Usage:
```lua
vim.pack.add({
  { src = "https://github.com/sasja-san/codered-nvim" },
})
vim.cmd("colorscheme codered")
```


## Recomended Plugins, and Their Configurations

```lua
vim.pack.add({
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },
})

-- These are the colors VS Code uses
-- Omit `highlight` to get even more parenthesis colors.
require("rainbow-delimiters.setup").setup( {
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterRed",
    "RainbowDelimiterBlue",
    "RainbowDelimiterViolet",
  }
})

require("ibl").setup()

```


# Font Properties

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


# Cursor Issues

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

