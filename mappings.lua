return {
  n = {
    ["<C-s>"] = false,
    ["<C-q>"] = false,
  },
  v = {
    -- Add alias motions as suggested by surround.nvim
    ["ir"] = { "i[", desc = "Inside square brackets" },
    ["ar"] = { "a[", desc = "Around square brackets" },
    ["ia"] = { "i<", desc = "Inside angle brackets" },
    ["aa"] = { "a<", desc = "Around angle brackets" },
  },
  o = {
    -- Add alias motions as suggested by surround.nvim
    ["ir"] = { "i[", desc = "Inside square brackets" },
    ["ar"] = { "a[", desc = "Around square brackets" },
    ["ia"] = { "i<", desc = "Inside angle brackets" },
    ["aa"] = { "a<", desc = "Around angle brackets" },
  },
}
