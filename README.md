
# Code Red

Adaptation of the VS Code Red theme to neovim.
Source code for [melange](https://github.com/savq/melange-nvim)
helped a lot in the making of this.

![showcase_picture](https://private-user-images.githubusercontent.com/712688/518777432-89411054-0c5f-462b-bcf5-cb24d33bea15.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NjQwOTIwMzUsIm5iZiI6MTc2NDA5MTczNSwicGF0aCI6Ii83MTI2ODgvNTE4Nzc3NDMyLTg5NDExMDU0LTBjNWYtNDYyYi1iY2Y1LWNiMjRkMzNiZWExNS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUxMTI1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MTEyNVQxNzI4NTVaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1mMzM4OTk2NGU5ODhlNjcxYjI5OGEzNWQzM2VlNTBlY2E2YjM1ZjIxYTcyODdjYWQ5NGE4NGFkMzA0NjQzYjYxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.bC9s3c7tHoh0R0BRyxTOXAwMGsZi051VCZfGYVHKSKw)

(if image is broken, go check in the wiki)



## Usage

```lua
vim.pack.add({
  { src = "https://github.com/sasja-san/codered-nvim" },
})
vim.cmd("colorscheme codered")
```



## Highly Recomended Configuration

```lua
vim.o.cursorline = true

vim.pack.add({
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/nvim-mini/mini.cursorword" }, 
  { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },
})

require("mini.cursorword").setup()

require("ibl").setup({
  indent = {
    char = "▏", -- Use 1/8 block instead of 1/4 (default)
  },
}) 

-- Colored parenthesis.
require("rainbow-delimiters.setup").setup( {
  -- VS Code uses four colors. Omit `highlight` field for seven.
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterRed",
    "RainbowDelimiterBlue",
    "RainbowDelimiterViolet",
  }
})
```

  * `indent-blankline` with rainbow colors? See its Github README for example.
  * `mini.cursorword` can be switched for `RRethy/vim-illuminate`.
  * Highlight Groups declared for rainbow colors (should you need them) consist 
of these names:
      ```lua
      local rainbow = {
        "RBRed", "RBOrange", "RBYellow", "RBGreen",
        "RBCyan", "RBBlue", "RBViolet"
      }
      ```



## Font Properties

If you want to control which of the font attributes in use, this example 
code should help you. All five variants must be declared in the table
for this to work properly.

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

For Alacritty, this config might help:
```toml
[colors.cursor]
text = "CellForeground"
```



## Things to Fix

*HG = Highlight Group*

- [ ] Write proper instructions for indent-blankline rainbow coloring
- [x] HG for tree-sitter
- [ ] HG for LSP (strikeover+undercurl for deprecated code)
- [x] Support for lualine
- [ ] Tweak lualine coloring (visual is a bit too bright, among other things)
- [ ] Other statuslines, such as airline
- [ ] Change active tab coloring in bufferline
- [ ] Number column is darker than Normal HG. Maybe follow VS Code better?
- [ ] Test out the Git stuff.


