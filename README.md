# codered-nvim
Adaptation of the VS Code red theme to neovim.


To make the cursor appear correctly in the terminal,
you will need these commands after having run `:set termguicolors`
```
:set guicursor=n-v-c:block-Cursor
:set guicursor+=i:ver25-Cursor
:set guicursor+=r-cr:hor20-Cursor
```

For alacritty:
```toml
[colors.cursor]
text = "CellForeground"
```

