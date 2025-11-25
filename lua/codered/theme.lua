local M = {}

local c = require('codered.palette')

M.guicursor_fix = function()
  vim.cmd("set termguicolors")

  -- the default cursor
  -- local _def = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,"
  --           .. "t:block-blinkon500-blinkoff500-TermCursor"

  local fix = "n-v-c:block-Cursor/lCursor"
             .. ",i:ver25-Cursor/lCursor"
             .. ",r-cr:hor50-WhiteCursor"

  local cmd = ":set guicursor="..fix
  vim.cmd( cmd )
end



-- Enable all font attributes by default.
-- This way of doing it is stolen straight out of the melange theme.
local bold, italic, underline, undercurl, strikethrough
if (vim.g.codered_enable_font_variants == true) or
   (vim.g.codered_enable_font_variants == nil) then
  bold          = true
  italic        = true
  underline     = true
  undercurl     = true
  strikethrough = true
elseif type(vim.g.codered_enable_font_variants) == 'table' then
  --- Enable only selected font attributes
  bold          = vim.g.codered_enable_font_variants.bold
  italic        = vim.g.codered_enable_font_variants.italic
  underline     = vim.g.codered_enable_font_variants.underline
  undercurl     = vim.g.codered_enable_font_variants.undercurl
  strikethrough = vim.g.codered_enable_font_variants.strikethrough
end


M.cursor_hl_setup = function()
  -- this can't be done with normal color settings:
  -- highlight Cursor guifg=fg guibg=#970800 

  -- vim.cmd([[highlight Cursor guifg=fg guibg=#970800 ]])
end



M.highlight_groups = {

  Cursor      = { bg = c.red_l_12,  fg = c.txt_8 },
  WhiteCursor = { bg = c.rb_yellow, fg = c.txt_8 },
  lCursor     = "Cursor",
  TermCursor  = "Cursor",
  CursorIM    = "Cursor",

  Normal     = { bg = c.red_bg, fg   = c.txt_7 },
  NormalNC   = "Normal",

  NormalFloat  = { bg = c.red_d_02 },
  FloatBorder  = { bg = c.red_d_02, fg = c.border },
  FloatTitle   = { bg = c.red_d_02, fg = c.txt_2 },
  FloatFooter  = "FloatTitle",

  ColorColumn  = { bg = c.red_l_01, fg = c.txt_1 },
  CursorColumn = "ColorColumn",
  CursorLine   = { bg = c.red_l_05 },
  CursorLineNr = { bg = c.red_d_01, fg = c.txt_2 },

  LineNr       = { bg = c.red_d_01, fg = c.txt_3 },
  LineNrAbove  = "LineNr",
  LineNrBelow  = "LineNr",
  SignColumn   = "LineNr",
  Folded       = { bg = c.red_l_02, fg = c.txt_2, },
  FoldColumn   = { bg = c.red_d_04, fg = c.txt_0, },
  -- undeclared: CursorLineFold CursorLineSign

  -- Popup menu. From RMB or TAB press on command entry
  Pmenu            = "NormalFloat",
  PmenuSel         = { bg = c.red_l_06 },
  PmenuThumb       = "PmenuSel",
  PmenuBorder      = "FloatBorder",
  WildMenu         = "NormalFloat",
  -- PmenuKind PmenuKindSel PmenuExtra PmenuExtraSel PmenuSbar
  PmenuMatch       = { fg = c.txt_5,  bold = bold },
  PmenuMatchSel    = "PmenuMatch",
  -- ComplMatchIns


  StatusLine   = { bg = c.red_l_07, fg   = c.txt_6 },
  StatusLineNC = { bg = c.red_d_01 }, -- StatusLineTerm StatusLineTermNC
  TabLine      = { bg = c.red_d_01, fg   = c.inactive },
  TabLineSel   = { bg = c.red_l_02, fg   = c.txt_6 },
  TabLineFill  = { bg = c.red_d_04 }, -- WinSeparator WinBar WinBarNC
  CurSearch    = { bg = c.search_c, bold = bold },
  Search       = { bg = c.search_o, bold = bold },
  MatchParen   = { bg = c.red_l_05 }, -- Substitute
  Visual       = { bg = c.red_l_08 },
  VisualNOS    = { bg = c.red_l_03 }, -- how to trigger...?
  Whitespace   = { fg = c.txt_4 },
  Conceal      = "Whitespace",
  NonText      = 'Whitespace',
  SpecialKey   = 'Whitespace', -- EndOfBuffer


  Directory    = { fg = c.support },
  Title        = { fg = c.comment, bold  = bold },
  ErrorMsg     = { bg = c.red_l_08 },
  ModeMsg      = { fg = c.txt_2 },
  MoreMsg      = { fg = c.txt_6 },
  -- MsgArea MsgSeparator MoreMsg WarningMsg
  Question     = "MoreMsg",
  QuickFixLine = "PmenuMatch",
  qfFileName   = "Directory",


  ----------------------------------------
  -- SYNTAX HIGHLIGHTING -----------------
  ----------------------------------------

  Default = { fg = c.txt_7 },

  -- BASIC STUFF (from VSCode source)
  --  Because of how HL group linking works (see :h hi-link) any
  --  attributes linking to one of these base cases with attributes
  --  gets ignored. This means that if a group is to be in italics,
  --  (such as Variable) the italics cannot exist on the base group,
  --  but only on linking groups.
  --  Some of these attributes are left as comments.
  --  Apply them at higher levels (like tree-sitter or LSPs).
  Comment      = { fg = c.comment, italic = italic },
  Constant     = { fg = c.constant },
  Keyword      = { fg = c.keyword },
  Entity       = { fg = c.entity },
  Storage      = { fg = c.storage, bold = bold },
  String       = { fg = c.string  },
  Support      = { fg = c.support },
  Variable     = { fg = c.variable, italic = italic },
  Invalid      = { fg = c.invalid },
  SubClass     = { fg = c.subclass, underline = underline },
  ConstChar    = { fg = c.constchar },
  StrEscape    = { fg = c.str_escape },
  StrRegex     = { fg = c.str_regex },
  StrVar       = { fg = c.str_var },
  SupportFun   = { fg = c.sup_fun },
  SupportConst = { fg = c.sup_const },
  Process      = { fg = c.process },
  DeclTag      = { fg = c.decl_tag },

  -- EXTRA STUFF (from VS Code source)
  CssTagName        = { fg = c.css_tag_name },
  CssId             = { fg = c.css_id },
  CssClass          = { fg = c.css_class },
  CssPropName       = { fg = c.css_prop_name },
  CssPropVal        = { fg = c.css_prop_val, italic = italic },
  CssAddConst       = { fg = c.css_add_const },
  CssAtRule         = { fg = c.css_at_rule },
  CssConstructorArg = { fg = c.css_constructor_arg },

  -- Diffs (from VS Code source)
  DiffHeader   = { fg = c.diff_header, italic = italic  },
  DiffDeleted  = { fg = c.diff_deleted },
  DiffChanged  = { fg = c.diff_changed },
  DiffInserted = { fg = c.diff_inserted },

  -- Markup (from VS Code source)
  MarkupQuote    = { fg = c.markup_quote },
  MarkupList     = { fg = c.markup_list },
  MarkupStyling  = { fg = c.markup_styling },
  MarkupInline   = { fg = c.markup_inline },
  MarkupHeadings = { fg = c.markup_headings, bold = bold },

  StringInterpolation = { fg = c.str_interpolation },


  DiffAdd      = "DiffInserted", -- names used in melange theme
  DiffChange   = "DiffChanged",
  DiffDelete   = "DiffDeleted",
  DiffRemoved  = "DiffDeleted",
  DiffText     = "DiffHeader",
  DiffAdded    = "DiffAdd",

  Character    = "String",
  Number       = "Constant",
  Boolean      = "Constant",
  Float        = "Number",
  Structure    = "Support",

  Identifier   = "Entity",
  Function     = "Entity",
  Type         = "Storage",
  Statement    = "Keyword",
  Conditional  = "Keyword",
  Repeat       = "Keyword",
  Operator     = "Keyword",

  Include      = "PreProc",
  Define       = "PreProc",
  Macro        = "PreProc",

  StorageClass = "Storage",

  Special      = { fg = c.cstr_esc },
  SpecialChar  = { fg = c.cstr_esc },
  Delimiter    = { fg = c.rb_yellow },
  Paren1       = { fg = c.rb_yellow, bold = bold },
  -- SpecialComment Debug Tag

  Ignore            = { fg = c.comment },
  Todo              = { fg = c.css_tag, bold = bold },
  Error             = { fg = c.txt_5, bg = c.invalid,  undercurl = undercurl },
  NvimInternalError = { fg = c.txt_5, bg = c.red_d_04, undercurl = undercurl },

  Bold          = { bold          = bold },
  Italic        = { italic        = italic },
  Underline     = { underline     = underline },
  Undercurl     = { undercurl     = undercurl },
  Strikethrough = { strikethrough = strikethrough },


  ----------------------------------------
  -- TREE-SITTER HIGHLIGHTING ------------
  ----------------------------------------

  ["@function"]     = { fg = c.entity, nocombine = true },
  ["@variable"]     = "Variable", -- { fg = c.variable, italic  = italic },
  ["@property"]     = "Variable", -- fugly hack for lua
  ["@_parent"]      = "Default",
  -- ["@constant"] = "Constant",
  -- ["@type"]     = "Type",
  -- ["@keyword"]  = "Keyword",
  -- ["@module"]   = "Identifier",
  -- ["@label"]    = "Label",


  ["@variable.member"]       = { fg = c.entity, nocombine = true },
  ["@keyword.import"]        = "@keyword",
  ["@keyword.type"]          = "@type",
  ["@keyword.modifier"]      = "@type",

  ["@variable.parameter"]    = "@variable",

  ["@punctuation.delimiter"] = "Default",
  ["@punctuation.bracket"]   = "Paren1",
  ["@string.escape"]         = "StrEscape",
  ["@type.builtin"]          = "@type",
  ["@constant.builtin"]      = "Default",

  ["@string.special.url"]     = { fg = c.rb_blue, underline = underline },


  ----------------------------------------
  -- MARKUP ------------------------------
  ----------------------------------------

  ["@markup.strong"]        = "Bold",
  ["@markup.italic"]        = "Italic",
  ["@markup.underline"]     = "Underline",
  ["@markup.undercurl"]     = "Undercurl",
  ["@markup.strikethrough"] = "Strikethrough",

  ["@markup.heading"]       = "Title",
  ["@markup.heading.2"]     = "Title",
  ["@markup.heading.3"]     = "Title",
  ["@markup.heading.5"]     = "@markup.heading.2",
  ["@markup.heading.6"]     = "@markup.heading.3",

  ["@markup.quote"]         = "Comment",
  ["@markup.math"]          = "@markup.raw",

  ["@markup.link"]          = "Underline",
  ["@markup.link.url"]      = "@string.special.url",

  ["@markup.raw"]           = "@string.special",

  ["@markup.list"]          = "Delimiter",

  -- ["@markup.link.label"] ["@markup.list.checked"] 
  -- ["@markup.heading.4"]  ["@markup.list.unchecked"]
  -- ["@markup.raw.block"] 



  ["@diff.plus"] = "DiffAdd",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.delta"] = "DiffChange",



  ----------------------------------------
  -- TREE-SITTER LANGUAGE OVERRIDES ------
  ----------------------------------------

  ["@constant.lua"]           = "Variable",
  -- ["@variable.cpp"]        = "Default",
  -- ["@variable.member.cpp"] = "Default",

  ["@type.cpp"]               = "Entity",
  ["@operator.cpp"]           = "Operator", --{ fg = c.keyword, nocombine = true },


  ---- Markdown ----------------------------------------------
  markdownCode = '@markup.raw',
  markdownCodeBlock = '@markup.raw.block',

  -- General rainbow color FGs.
  RBRed    = { fg = c.rb_red },
  RBOrange = { fg = c.rb_orange },
  RBYellow = { fg = c.rb_yellow },
  RBGreen  = { fg = c.rb_green },
  RBCyan   = { fg = c.rb_cyan },
  RBBlue   = { fg = c.rb_blue },
  RBViolet = { fg = c.rb_violet },

  ---- "lukas-reineke/indent-blankline.nvim"


  ---- "hiphish/rainbow-delimiters.nvim" :h rb-delimiters-colors
  -- RainbowDelimiterRed    = { fg = c.rb_red },
  -- RainbowDelimiterOrange = { fg = c.rb_orange },
  -- RainbowDelimiterYellow = { fg = c.rb_yellow },
  -- RainbowDelimiterGreen  = { fg = c.rb_green },
  -- RainbowDelimiterCyan   = { fg = c.rb_cyan },
  -- RainbowDelimiterBlue   = { fg = c.rb_blue },
  -- RainbowDelimiterViolet = { fg = c.rb_violet },

  RainbowDelimiterRed    = "RBRed",
  RainbowDelimiterOrange = "RBOrange",
  RainbowDelimiterYellow = "RBYellow",
  RainbowDelimiterGreen  = "RBGreen",
  RainbowDelimiterCyan   = "RBCyan",
  RainbowDelimiterBlue   = "RBBlue",
  RainbowDelimiterViolet = "RBViolet",

  ---- "nvim-neo-tree/neo-tree.nvim" :h neo-tree-highlights
  NeoTreeFloatBorder  = "Normal",
  NeoTreeNormal       = "Pmenu",
  NeoTreeNormalNC     = "NeoTreeNormal",
  NeoTreeCursorLine   = "PmenuSel",
  NeoTreeWinSeparator = { fg = c.red_d_02, bg = c.red_d_02 }, -- hide


  -- This should fix "folke/todo-comments.nvim", among other things
  DiagnosticError   = { fg = c.rb_cyan },   -- FIX, FIXME, BUG, ISSUE
  DiagnosticWarn    = { fg = c.rb_orange }, -- HACK, WARN, WARNING, XXX
  DiagnosticInfo    = { fg = c.rb_green },  -- TODO
  DiagnosticHint    = { fg = c.rb_red },    -- NOTE, INFO
  DiagnosticOk      = { fg = c.rb_blue },

  DiagnosticDefault = { fg = c.rb_yellow },
  DiagnosticTest    = { fg = c.rb_violet },

  DiagnosticUnderlineError = { undercurl = undercurl, sp = c.rb_cyan },
  DiagnosticUnderlineWarn  = { undercurl = undercurl, sp = c.rb_orange },
  DiagnosticUnderlineInfo  = { undercurl = undercurl, sp = c.rb_green },
  DiagnosticUnderlineHint  = { undercurl = undercurl, sp = c.rb_red },
  DiagnosticUnderlineOk    = { undercurl = undercurl, sp = c.rb_blue },


  WordUnderCursorA = { bg = c.word_hl_cur }, -- under cursor
  WordUnderCursorB = { bg = c.word_hl_oth }, -- matching the above

  -- "RRethy/vim-illuminate"
  IlluminatedWordText  = "WordUnderCursorA",
  IlluminatedWordRead  = "WordUnderCursorA",
  IlluminatedWordWrite = "WordUnderCursorB",

  -- "nvim-mini/mini.cursorword"
  MiniCursorword        = "WordUnderCursorB",
  MiniCursorwordCurrent = "WordUnderCursorA",

}

return M
