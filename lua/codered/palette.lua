
-- stylua: ignore

local colors = {

  -- Because VS Code lives its own life, in many regards, the red colors
  -- used here had to be acquired using the GIMP color picker as the
  -- source code is somewhat unreliable (and uses a bunch of alphas).
  --
  -- The text element colors were taken straight out of the source file.
  -- Rainbow and some other things were made up, trying to fit the general
  -- look of the theme.

  -- BACKGROUND COLORS
  red_d_04  = "#220002", -- statusline bg
  red_d_03  = "#270002", -- fold column
  red_d_02  = "#300001", -- popup, background
  red_d_01  = "#300a0a", -- tab bg col inactive
  -- ^^     darker      ^^

  red_bg    = "#390002", -- editor bg, number column bg, line bg col inactive

  -- vv     lighter     vv
  red_l_01  = "#490000", -- tab bg col   active
  red_l_02  = "#4b0403", -- line resulting from a fold
  red_l_03  = "#570502", -- highlighted text (inactive window)
  red_l_04  = "#580101", -- vscode left sidebar
  red_l_05  = "#610002", -- cursor line
  red_l_06  = "#670000", -- popup selected menu item
  red_l_07  = "#700400", -- line bg col   active, statusline
  red_l_08  = "#750002", -- highlighted text
  red_l_09  = "#770000", -- list / popup menu selection inactive, vscode top bar
  red_l_10  = "#800000", -- list / popup menu hover background
  red_l_11  = "#880000", -- list / popup menu selection
  red_l_12  = "#970800", -- cursor (sampled from block marker)

  -- TEXT COLORS
  txt_0 = "#662222", -- list / popup menu drop bg
  txt_1 = "#643a3a", -- fold column text
  txt_2 = "#a26363", -- numcol,   active num, text on folded line
  txt_3 = "#a23f3f", -- numcol, inactive num
  txt_4 = "#c10005", -- whitespace char color
  txt_5 = "#ff4444", -- list / popup menu highlight foreground
  txt_6 = "#ffd0aa", -- active fg
  txt_7 = "#f8f8f8", -- used by normal text (loaded .txt file)
  txt_8 = "#69ffff", -- character color under cursor


  -- UI ELEMENT COLORS
  search_c    = "#525b6a",  -- search, currently marked
  search_o    = "#731e00",  -- search, other hits on screen
  fold_mark   = "#c5c5c5", -- unused? value from vscode clickable thing
  border      = "#454545", -- popup, border
  inactive    = "#998585", -- inactive (such as tabline)
  word_hl_cur = "#5a403f", -- current word under cursor
  word_hl_oth = "#4f3f3f", -- words matching that under cursor



  -- BASED ON PARENS, A FULL RAINBOW
  -- Rainbow colors according to HiPhish/rainbow-delimiters.nvim
  -- red, orange, yellow, green, cyan, blue , violet
  rb_red     = "#f12727",
  rb_orange  = "#ff7d17",
  rb_yellow  = "#ffd700", -- parenthesis 1
  rb_green   = "#a1c755",
  rb_cyan    = "#47bab9",
  rb_blue    = "#179fff", -- parenthesis 3
  rb_violet  = "#da70d6", -- parenthesis 2 (violet substitute)


  -- CODE COLORS, from VS Code source file
  comment    = "#e7c0c0", -- italic
  constant   = "#994646",
  keyword    = "#f12727",
  entity     = "#fec758",
  storage    = "#ff6262",
  string     = "#cd8d8d",
  support    = "#9df39f",
  variable   = "#fb9a4b",
  invalid    = "#ffffff",

  subclass   = "#aa5507", -- 'Entity inherited-class', underlined
  constchar  = "#ec0d1e", -- constant.character

  str_escape = "#ffe862", -- constant.character.escape
  str_regex  = "#ffb454",
  str_var    = "#edef7d",

  sup_fun    = "#ffb454",
  sup_const  = "#eb939a",

  process    = "#73817d", -- 'Doctype/XML Processing'
  decl_tag   = "#ec0d1e", -- 'Meta.tag.A'

  css_tag_name        = "#aa5507",
  css_id              = "#fec758",
  css_class           = "#41a83e", -- css.class
  css_prop_name       = "#96dd3b", -- css property-name
  css_prop_val        = "#ffe862", -- css property-value, italic
  css_add_const       = "#ffe862", -- css additional-constants
  css_at_rule         = "#fd6209", -- css @at-rule
  css_constructor_arg = "#ec9799", -- css constructor.argument

  diff_header         = "#f8f8f8", -- italic
  diff_deleted        = "#ec9799",
  diff_changed        = "#f8f8f8",
  diff_inserted       = "#41a83e",

  markup_quote        = "#f12727",
  markup_list         = "#ff6262",
  markup_styling      = "#fb9a4b",
  markup_inline       = "#cd8d8d",
  markup_headings     = "#fec758", -- bold, entity.name.section

  str_interpolation   = "#ec0d1e", -- String interpolation


  -- these are for debugging stuff
  k = "#000000",
  b = "#0000FF",
  c = "#00FFFF",
  g = "#00FF00",
  y = "#FFFF00",
  r = "#FF0000",
  m = "#FF00FF",
  w = "#FFFFFF",

}


return colors
