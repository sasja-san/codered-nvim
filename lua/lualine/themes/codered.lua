local c = require("codered.palette")

return {
  normal = {
    a = { bg = c.k,         fg = c.txt_3, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  insert = {
    a = { bg = c.variable,  fg = c.k, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  replace = {
    a = { bg = c.subclass,  fg = c.k, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  command = {
    a = { bg = c.txt_3,     fg = c.k, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  terminal = {
    a = { bg = c.constant,  fg = c.k, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  visual = {
    a = { bg = c.support,   fg = c.k, gui = "bold"  },
    z = { bg = c.k,         fg = c.txt_2 },
    b = { bg = c.red_d_03,  fg = c.txt_2 },
    y = { bg = c.red_d_03,  fg = c.txt_2 },
    c = { bg = c.red_d_01,  fg = c.txt_3 },
  },
  inactive = {
    a = { bg = c.red_d_04,  fg = c.txt_0 },
    z = { bg = c.red_d_04,  fg = c.txt_0 },
    b = { bg = c.red_d_02,  fg = c.txt_1 },
    y = { bg = c.red_d_02,  fg = c.txt_1 },
    c = { bg = c.red_bg,    fg = c.txt_1 },
  },
}
